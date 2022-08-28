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

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    // the method will be called when the key with label c
    // is pressed
    @IBAction func keyPressed(_ sender: UIButton) {
        // the code below is for debugging purpose
        print("I got pressed")
    }
    

}

