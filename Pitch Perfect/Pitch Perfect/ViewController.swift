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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        //TODO: Show text "recording in progress"
        //TODO: Record the user's voice
        label1.hidden = false
        
        print("In recordAudio")
    }

}

