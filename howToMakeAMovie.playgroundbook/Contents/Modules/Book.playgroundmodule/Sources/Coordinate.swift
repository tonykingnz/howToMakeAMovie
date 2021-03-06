//
//  Coordinate.swift
//  
//  Copyright © 2016-2019 Apple Inc. All rights reserved.
//

import SceneKit

/// Specifies a location (column, row) in a grid of columns and rows.
///
/// - localizationKey: Coordinate
public struct Coordinate {
    public let column, row: Int
    
    /// Creates a coordinate specifying a column and a row within a grid.
    ///
    /// Example usage:
    /// ````
    /// let position = Coordinate(column: 4, row: 2)
    /// ````
    ///
    /// - Parameter column: The column for the coordinate.
    /// - Parameter row: The row for the coordinate.
    ///
    /// - localizationKey: Coordinate(column{Int}:row{Int}:)
    public init(column: Int, row: Int) {
        self.column = column
        self.row = row
    }
}

/// World Positioning
extension Coordinate {
    
    /// Provides the 2D position (0 y component) for a Coordinate.
    var position: SCNVector3 {
        let scaledX = SCNFloat(column) * WorldConfiguration.coordinateLength
        let scaledZ = -SCNFloat(row) * WorldConfiguration.coordinateLength
        return SCNVector3(Float(scaledX), 0, Float(scaledZ))
    }
    
    init(_ position: SCNVector3) {
        self.column = Int(round(position.x / WorldConfiguration.coordinateLength))
        self.row = Int(round(-position.z / WorldConfiguration.coordinateLength))
    }
}

extension Coordinate: CustomStringConvertible {
    
    public var description: String {
        return String(format: NSLocalizedString("column %d, row %d", comment: "Textual description of a Coordinate, column/row coordinates in the world."), column, row)
    }
}

extension Coordinate {
    
    /**
     Provides the coordinates surrounding the coordinate in each of the
     four cardinal directions (N, S, E, W).
     */
    public var neighbors: [Coordinate] {
        return [
           neighbor(inDirection: .north),
           neighbor(inDirection: .south),
           neighbor(inDirection: .east),
           neighbor(inDirection: .west)
        ]
    }
    
    /// Calculates the number of coordinates between the receiver and the provided coordinate (non-diagonal movement).
    public func distance(to coordinate: Coordinate) -> Int {
        let col: Int = column - coordinate.column
        let colAbs: Int = abs(col)
        let ro: Int = row - coordinate.row
        let roAbs: Int = abs(ro)
        
        return colAbs + roAbs
    }
    
    public func neighbor(inDirection direction: Direction) -> Coordinate {
        return advanced(by: 1, inDirection: direction)
    }
    
    public func advanced(by displacement: Int, inDirection direction: Direction) -> Coordinate {
        // -M_PI_2 to calibrate for 0 in the +z direction (Normally it would be in the +x).
        let dx = Int(round(cos(direction.radians - π / 2))) * displacement
        let dy = Int(round(sin(direction.radians - π / 2))) * displacement
        
        return Coordinate(column: column + dx, row: row + dy)
    }
}

extension Coordinate: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(row)
        hasher.combine(column)
    }
}

public func ==(c1: Coordinate, c2: Coordinate) -> Bool {
    return c1.row == c2.row && c1.column == c2.column
}
