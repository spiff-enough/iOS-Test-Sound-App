//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Melina on 11/13/15.
//  Copyright © 2015 Melina Casanova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // "Recording in Process" label defined
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        // Makes changes inside the view right before the view loads on the user's device
        label1.hidden = true
        stopButton.hidden = true
        recordButton.enabled = true;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        //TODO: Show text "recording in progress"
        //TODO: Record the user's voice
        label1.hidden = false
        stopButton.hidden = false
        recordButton.enabled = false
        print("Recording audio")
    }
    
    @IBAction func stopRecording(sender: UIButton) {
        label1.hidden = true
        stopButton.hidden = true
        print("Pressed stop")
    }

}

