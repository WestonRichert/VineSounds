//
//  ViewController.swift
//  Vines
//
//  Created by Weston Richert on 6/1/18.
//  Copyright © 2018 Weston Richert. All rights reserved.
//

import UIKit
import AVFoundation

var player: AVAudioPlayer?

class ViewController: UIViewController
{
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    
    func playSound(soundName : String, theExtension: String)
    {
        guard let url = Bundle.main.url(forResource: soundName, withExtension: theExtension) else {print("HECK")
            return}
        
        do
        {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.m4a.rawValue)
            
            guard let player = player else {return}
            player.play()
        }
        catch let error
        {
            print(error.localizedDescription)
        }
    }
    @IBAction func chillisBtn(_ sender: Any)
    {
        playSound(soundName: "finalChillis", theExtension: "mp3")
    }
    @IBAction func stopBtn(_ sender: Any)
    {
        playSound(soundName: "finalStop", theExtension: "mp3")
    }
    @IBAction func wowBtn(_ sender: Any)
    {
        playSound(soundName: "finalWow", theExtension: "mp3")
    }
    @IBAction func adamBtn(_ sender: Any)
    {
        playSound(soundName: "finalAdam", theExtension: "mp3")
    }
    @IBAction func chipotleBtn(_ sender: Any)
    {
        playSound(soundName: "finalChipotle", theExtension: "mp3")
    }
    @IBAction func targetBtn(_ sender: Any)
    {
        playSound(soundName: "finalTarget", theExtension: "mp3")
    }
    @IBAction func croissantBtn(_ sender: Any)
    {
        playSound(soundName: "finalCroissant", theExtension: "mp3")
    }
    @IBAction func avocadoBtn(_ sender: Any)
    {
        playSound(soundName: "finalAvocado", theExtension: "mp3")
    }
    @IBAction func shavacadoBtn(_ sender: Any)
    {
        playSound(soundName: "finalShavacado", theExtension: "mp3")
    }
    @IBAction func RMBtn(_ sender: Any)
    {
        playSound(soundName: "finalRoommates", theExtension: "mp3")
    }
    @IBAction func tortillaBtn(_ sender: Any)
    {
        playSound(soundName: "finalTortilla", theExtension: "mp3")
    }
    @IBAction func dadBtn(_ sender: Any)
    {
        playSound(soundName: "finalDad", theExtension: "mp3")
    }
    @IBAction func owBtn(_ sender: Any)
    {
        playSound(soundName: "finalOw", theExtension: "mp3")
    }
    @IBAction func chickenBtn(_ sender: Any)
    {
        playSound(soundName: "finalChickens", theExtension: "mp3")
    }
    @IBAction func profBtn(_ sender: Any)
    {
        playSound(soundName: "finalWYp", theExtension: "mp3")
    }
    @IBAction func lebronBtn(_ sender: Any)
    {
        playSound(soundName: "finalLebron", theExtension: "mp3")
    }
    @IBAction func elbowBtn(_ sender: Any)
    {
        playSound(soundName: "finalElbow", theExtension: "mp3")
    }
    @IBAction func helloBtn(_ sender: Any)
    {
        playSound(soundName: "finalHello", theExtension: "mp3")
    }
}


