//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Melina on 12/19/15.
//  Copyright © 2015 Melina Casanova. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {

    var audioPlayer: AVAudioPlayer!
    var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
            let filePathUrl = NSURL.fileURLWithPath(filePath)
            audioPlayer = try? AVAudioPlayer(contentsOfURL: filePathUrl)
            audioPlayer.enableRate = true
        } else {
            print("The file path is empty")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func applySlowFilter(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.rate = 0.5
        audioPlayer.play()
    }

    @IBAction func applyFastFilter(sender: UIButton) {
        audioPlayer.stop()
        audioPlayer.enableRate = true
        audioPlayer.rate = 1.7
        audioPlayer.play()
    }
    
    @IBAction func stopPlayBack(sender: UIButton) {
        audioPlayer.stop()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
