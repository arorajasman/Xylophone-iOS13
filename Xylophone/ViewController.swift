//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
// the code below is used to import the AVFoundation library for playing the sound in the app
import AVFoundation

class ViewController: UIViewController {
    
    // the code below is used to create a variable of type AVAudioPlayer for playing the sound
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    // the method will be called when the key with label c
    // is pressed
    @IBAction func keyPressed(_ sender: UIButton) {
        
        // the code below is used to print the details in
        // the sender input to the console
        print("The details in the sender input are: \(sender)")

        // the code below is used to print the background color of the IB Button that is pressed
        
        // the code below is used to change the define the interpolation value i.e. sender.backgroundColor as
        // a optional type
        print("The Background Color of the pressed Button is: \(sender.backgroundColor as Optional)")
        
        // the code below is used to print the title of the button that is being pressed by the user
        
        // the code below is used to change the define the interpolation value i.e. sender.titleLabel?.text as
//         a String type
//        print("The title of the button pressed is: \(sender.titleLabel?.text as String?)")
        
        // the code below is to use the currentTitle property from the sender instance for getting the
        // value of the button that is pressed by the user
        print("The title of the button pressed by the user is: \(sender.currentTitle as String?)")
        
        
        // the code below is for debugging purpose
        // print("I got pressed")
        
        // the code below is used to call the play sound method to play the sound when the button is
        // pressed
        
        // the code below is used to send the button title as input for the playSound() method to play
        // the sound according to the button pressed
        playSound(buttonTitle: sender.currentTitle!)
        
        
        // the code below is used to change the opacity of the button to half when the button is pressed
        sender.alpha = 0.5
        
        // the below line of code is for debugging purpose
        print("start")
        
        // the code below is used to create a delay of 0.2 seconds
        
        // the code block of code below will be executed after a delay of 0.2 seconds from the current time
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2, execute: {
            
            // the below line of code of code is for debugging purpose
            print("end")
            
            // the code below is used to change the alpha value of the button to 1.0 from 0.5 to make it
            // fully opaque again
            sender.alpha = 1.0
        })
    }
    
    // the code below is used to create a method for playing a sound file when the method is called
    
    // the method below will take the name of the button pressed by the user as input for playing the
    // sound file accordingly
    func playSound(buttonTitle: String) {
        // here the name of our sound file is C so in forResource we need to write c and the extension
        // of our sound file is wav so in withExtension we will write wav
//        guard let url = Bundle.main.url(forResource: "C", withExtension: "wav") else { return }
//
//        do {
//            // the code below is used to play the sound even if the phone is on silent
//            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
//            try AVAudioSession.sharedInstance().setActive(true)
//
//            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
//            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
//
//            /* iOS 10 and earlier require the following line:
//            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
//
//            guard let player = player else { return }
//
//            // the code below is used to play the file
//            player.play()
//
//        } catch let error {
//            // the code below is used to catch any errors that occured while playing the sound file
//            print(error.localizedDescription)
//        }
        
        
        
        
        
        
        
        // updated code for playing the audio file
        
        // the code below is used to call the buttonTitle property for playing the sound according to the
        // button pressed
//        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
        let url = Bundle.main.url(forResource: buttonTitle, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()

    }
    

}

