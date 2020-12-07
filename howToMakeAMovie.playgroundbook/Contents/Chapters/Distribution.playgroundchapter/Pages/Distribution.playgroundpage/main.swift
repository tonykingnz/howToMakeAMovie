//#-hidden-code
//
//  main.swift
//
//  Copyright © 2020 Jose Antonio Maria de Rezende Silva. All rights reserved.
//

import SwiftUI
import PlaygroundSupport

var showImage = ""
func checkProjector(powered: Bool) {
    if powered == true {
        showImage = "TheaterMountainScene"
    }
    else {
        showImage = "NoProjection"
    }
}


//#-end-hidden-code
/*:
## Distribution

     
 Finally, the **distribution**. The movie is ready, and here it is distributed to the cinemas or digitally. All the marketing is made to call to watch the movie.

 The Premier will be tonight and the theater must be ready. Turn on the display, changing the value inside the `checkProjector` function by changing from boolean to `false` to `true`.

 See an example:

    lightsOfTheather(powered: true) //the light is on
    lightsOfTheather(powered: false) //the light is off


Change the code below then press "Run My Code" to run it.
*/
var actorReady = false
//#-editable-code

checkProjector(powered: false)//change here

//#-end-editable-code
//#-hidden-code

struct ContentView: View {
    var body: some View {
        Image(uiImage: UIImage(named: showImage)!)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
        
    }
}


PlaygroundPage.current.setLiveView(ContentView())

//#-end-hidden-code
