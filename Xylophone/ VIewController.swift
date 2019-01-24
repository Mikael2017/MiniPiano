//
//  ViewController.swift
//  Xylophone
//
//Created by Mikael Arage
import UIKit
import AVFoundation
// passing through local and global variables
/*class ViewController: UIViewController
{   var audioPlayer : AVAudioPlayer!
    var selectedSoundFileName : String = ""
    let soundArray = ["note1", "note2", "note3", "note4", "note5","note6","note7"]
    
  
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

 
  @IBAction func notePressed(_ sender: UIButton)
    {
        let value = ((sender.tag) - 1)
        selectedSoundFileName = soundArray[value]
        playXSound()
        
  }
    
     func playXSound()
    {
        
        
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        
        do
        {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
            
        }
            
        catch
        {
            print(error)
            
        }
           audioPlayer.play()
            
        
    }

}   */
// passing through value
 
 class ViewController: UIViewController
 {
 var audioPlayer : AVAudioPlayer!
 let soundArray = ["note1", "note2", "note3", "note4", "note5","note6","note7"]
 
 
 override func viewDidLoad()
 {
 super.viewDidLoad()
 }
 
 
 @IBAction func notePressed(_ sender: UIButton)
 {

    playXSound(soundFileName : soundArray[sender.tag - 1])
 
    }
 
    func playXSound(soundFileName : String) {
 
 
 let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
 
 do
 {
 audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
 
 }
 
 catch
 {
 print(error)
 
 }
 audioPlayer.play()
 
 
 }
 
}


