//
//  ViewController.swift
//  Soundboard
//
//  Created by Jessica Ward on 14/03/2017.
//  Copyright © 2017 Jessica Ward. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player:AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func triggerSound(_ sender: Any) {
        print("testSound")
        
        guard let sound = NSDataAsset(name: "testSound") else {
            print("asset not found")
            return
        }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(data: sound.data, fileTypeHint: AVFileTypeMPEGLayer3)
            
            //Plays Sound
            player!.play()
        } catch let error as NSError {
            print("error: \(error.localizedDescription)")
        }
        
    }
    
    @IBAction func triggerStopIt(_ sender: Any) {
        print("testSound");
        
        guard let sound = NSDataAsset(name: "testSound") else {
            print("asset not found")
            return
        }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(data: sound.data, fileTypeHint: AVFileTypeMPEGLayer3)
            
            player!.play();
        } catch let error as NSError {
            print("error: \(error.localizedDescription)")
        }
    }
    
    @IBAction func triggerFreezing(_ sender: Any) {
        print("testSound");
        
        guard let sound = NSDataAsset(name: "testSound") else {
            print("asset not found")
            return
        }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(data: sound.data, fileTypeHint: AVFileTypeMPEGLayer3)
            
            player!.play();
        } catch let error as NSError {
            print("error: \(error.localizedDescription)")
        }
    }
    
    @IBAction func triggerSaying(_ sender: Any) {
        print("testSound");
        
        guard let sound = NSDataAsset(name: "testSound") else {
            print("asset not found")
            return
        }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(data: sound.data, fileTypeHint: AVFileTypeMPEGLayer3)
            
            player!.play();
        } catch let error as NSError {
            print("error: \(error.localizedDescription)")
        }
    }
    
    @IBAction func triggerFace(_ sender: Any) {
        print("testSound");
        
        guard let sound = NSDataAsset(name: "testSound") else {
            print("asset not found")
            return
        }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(data: sound.data, fileTypeHint: AVFileTypeMPEGLayer3)
            
            player!.play();
        } catch let error as NSError {
            print("error: \(error.localizedDescription)")
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

