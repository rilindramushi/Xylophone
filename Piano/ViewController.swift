//
//  ViewController.swift
//  Piano
//
//  Created by Rilind on 10/16/17.
//  Copyright © 2017 Rilind Ramushi. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!
    var notat = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    var butoniIshtypur:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }

    @IBAction func playSound(_ sender: UIButton) {
        
        
        butoniIshtypur = sender.tag
        playSound()
        
        
    }
    
    func playSound(){
        var audioFile = Bundle.main.url(forResource: notat[butoniIshtypur], withExtension: "wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: audioFile!)
        audioPlayer.play()
    }
}

