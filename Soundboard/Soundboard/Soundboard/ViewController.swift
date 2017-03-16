//
//  ViewController.swift
//  Soundboard
//
//  Created by Jessica Ward on 14/03/2017.
//  Copyright © 2017 Jessica Ward. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController
{

    //Audio/Video Player
    var player:AVAudioPlayer?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Delete this comment------------
    func playSoundEffect(soundName:String)
    {
        guard let sound = NSDataAsset(name: soundName) else
        {
            print("asset not found")
            return
        }
        
        do
        {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(data: sound.data, fileTypeHint: AVFileTypeMPEGLayer3)
            
            //Plays Sound
            player!.play()
        }
        catch let error as NSError
        {
            //Error: Couldn't Play Sound
            print("error: \(error.localizedDescription)")
        }
    }
    //Delete this comment------------
    
    @IBAction func triggerSound(_ sender: Any)
    {
        playSoundEffect(soundName: "testSound")
    }
    
    @IBAction func triggerStopIt(_ sender: Any)
    {
        playSoundEffect(soundName: "StopIt")
    }
    
    @IBAction func triggerSaying(_ sender: Any)
    {
        playSoundEffect(soundName: "NotSayingIt")
    }

    @IBAction func triggerGoAway(_ sender: Any) {
        playSoundEffect(soundName: "Go Away")
    }
    
    @IBAction func triggerFreezing(_ sender: Any)
    {
        playSoundEffect(soundName: "Freezing")
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
