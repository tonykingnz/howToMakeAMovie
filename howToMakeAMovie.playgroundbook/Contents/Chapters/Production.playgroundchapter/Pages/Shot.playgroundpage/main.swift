//#-hidden-code
//
//  main.swift
//
//  Copyright © 2020 Jose Antonio Maria de Rezende Silva. All rights reserved.
//

import SwiftUI
import PlaygroundSupport

let speech = "I can see the mountain!"
var actorDialogue = false
var statusImage = ["0", "1", "2"]
var imageToShow = statusImage[0]
func dialogue (whatActorWillSay: String) {
    if whatActorWillSay == "I can see the mountain!" {
        actorDialogue = true
    }
}

//#-end-hidden-code
/*:
## Production

     
**Production** is where the movie will be shot. Here is where happens the main photography.
     
Help the director shoot the scene of the mountain. Help him be sure if he had the actor in place in the location and the actor is saying what is in the script.

When mark true in the actor boolean, so that the actor could be ready.

 See a exemple:
 
    var weAreInTheLocation = true
    var weFinishedTheMovie = false
    weAreInTheLocation = false

 
Remenber the speech string you create, assing it name to the diagole function.
 
 See a exemple o how do it:
 
    movieStatus(status: weFinishedTheMovie)

Change the code below then press "Run My Code" to run it.
*/
var actorReady = false
//#-editable-code

actorReady = false //change here
dialogue(whatActorWillSay: "") //change here

//#-end-editable-code
//: [**Let's finish the movie? Go to the Pos-production phase**](@next)
//#-hidden-code
if actorReady == true && actorDialogue == true {
    imageToShow = statusImage[2]
}
else if actorReady == true && actorDialogue == false {
    imageToShow = statusImage[1]
}
else {
    imageToShow = statusImage[0]
}
struct ContentView: View {
    var body: some View {
        Image(uiImage: UIImage(named: imageToShow)!)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
        
    }
}






PlaygroundPage.current.setLiveView(ContentView())

//#-end-hidden-code
