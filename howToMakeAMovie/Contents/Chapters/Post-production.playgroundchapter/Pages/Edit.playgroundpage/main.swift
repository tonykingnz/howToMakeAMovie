//#-hidden-code
//
//  main.swift
//
//  Copyright © 2020 Jose Antonio Maria de Rezende Silva. All rights reserved.
//

import SwiftUI
import PlaygroundSupport


var valueOfBrightness = 0.00015
//#-end-hidden-code
/*:
## Post-production

     
**Post-production** happens after the film principal photography is shot. In that phase, all the footage is revised, corrected, and also edited. Soundtrack and effects are added and, if required, the VFX is combined. Later, after everything be ready, and the movie is completed.

Help the crew add a color effect to a scene.


Create two variable, one with the name of `valueOfSaturation` and another with `valueOfContrast` and assign, respectively `1.3` and `1.05` as they value.

 See a exemple:
 
    var valueOfBrightness = 0.00015
 

Change the code below then press "Run My Code" to run it.
*/
//#-editable-code
//Add your code here

//#-end-editable-code
//: [**The movie is ready! Let's release it!**](@next)
//#-hidden-code

struct ContentView: View {
    var body: some View {
        Image(uiImage: UIImage(named: "Scene")!)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .brightness(valueOfBrightness)
            .contrast(valueOfContrast)
            .saturation(valueOfSaturation)
        
    }
}

//func saturation(_ amount: Double) -> some View
//func contrast(_ amount: Double) -> some View





PlaygroundPage.current.setLiveView(ContentView())

//#-end-hidden-code
