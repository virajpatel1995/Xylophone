//
//  ViewController.swift
//  Xylophone

//  Copyright © 2017 Viraj Patel. All rights reserved.


import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    let audioArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    var selectedSoundFileName : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
    //print(sender.tag)
        
        selectedSoundFileName = audioArray[sender.tag - 1]
        
        playSound(soundfile: selectedSoundFileName)
    
    }
    
  
    
    
    func playSound(soundfile : String){
        
        
        let soundURL = Bundle.main.url(forResource: soundfile, withExtension: "wav")
        
        do{
            
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
            
        }
        catch{
            
            print(error)
            
        }
        audioPlayer.play()
        
    }

    
    
    
}

