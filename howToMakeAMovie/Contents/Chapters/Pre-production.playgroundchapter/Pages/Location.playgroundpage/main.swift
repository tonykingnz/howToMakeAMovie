//#-hidden-code
//
//  main.swift
//
//  Copyright © 2020 Jose Antonio Maria de Rezende Silva. All rights reserved.
//

import SwiftUI
import PlaygroundSupport

    
//#-end-hidden-code
/*:
## Pre-production

     
In **the pre-production**, everything in the production is carefully planned, like the crew, actors, locations, equipment, sound stage, shooting schedule. Also, the movie can is pre-visualized, using storyboards or even animations.

The location manager has a list with some possible locations to shoot the mountain scene. Help the location manager find the best option to shoot the scene of the mountain.
     
To help him select the best location inside the array. Change the number inside the square brackets after the name of the array inside the function the see the places with the location manager. Remember that an array starts at 0, then the second element 1, the third 2, and so on.

Change the code below then press "Run My Code" to run it.
*/
var locations = ["City", "Space", "Mountain", "Ocean"]
//#-hidden-code

var locationToTry: String = ""

func seeLocation (location: String) {
    locationToTry = location
}
//#-end-hidden-code
//#-editable-code

seeLocation(location: locations[0])

//#-end-editable-code
//: [**Let's shoot? Go to the Production phase**](@next)
//#-hidden-code
    

struct ContentView: View {
    var body: some View {
        Image(uiImage: UIImage(named: locationToTry)!)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
        
    }
}






PlaygroundPage.current.setLiveView(ContentView())

//#-end-hidden-code
