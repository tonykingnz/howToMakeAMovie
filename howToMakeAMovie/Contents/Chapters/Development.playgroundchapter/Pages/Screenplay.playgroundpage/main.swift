//#-hidden-code
//
//  main.swift
//
//  Copyright © 2020 Jose Antonio Maria de Rezende Silva. All rights reserved.
//

import SwiftUI
import PlaygroundSupport


let imagesSpeech = ["Initial",
     "Wrong", "Correct"]

var imageDisplay = imagesSpeech[0]

func checkCode (speech: String) {
    if speech == "I can see the mountain!" {
        imageDisplay = imagesSpeech[2]
    }
    else {
        imageDisplay = imagesSpeech[1]
    }
}
    
//#-end-hidden-code
/*:
## Development

     
**The development** is where movie production begins.
The producer select from where the story will come from, maybe from a book or even an original screenplay.
After organing the movie idea, the producers propose it to a film distributor. If everything occurs okay, the film receives a green light, that means that somebody offers financial support.

Can you help the screenwriters to put an idea they have on the script? They should write in the script the speech of a character. The character must say exactly `"I can see the mountain!"`.
     
To help them write it on the screenplay, create a `var`iable string called `speech`, then give that string the speech exactly like below:
        
 "I can see the mountain!"

An example of how should be:

    var nameOfCharacter = "Fhrodo"
     
 
If you did everything right and run your code, a piece of the screenplay will appear in the live view and the speech will be under the character name.

Write your code below then press "Run My Code" to run it.
*/
//#-editable-code
//Add your code here



//#-end-editable-code
//: [**Do you like to plan? Go to the next phase (Pre-production)**](@next)
//#-hidden-code
    
checkCode(speech: speech)
    

struct ContentView: View {
    var body: some View {
       // Text("Test")
        Image(uiImage: UIImage(named: imageDisplay)!)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
        
            //.frame(width: 300, height: 200, alignment: .center)
    }
}






PlaygroundPage.current.setLiveView(ContentView())

//#-end-hidden-code
