//
//  ViewController.swift
//  ABCBackwards
//
//  Created by Chang Sophia on 2018/9/5.
//  Copyright © 2018年 Chang Sophia. All rights reserved.
//

import UIKit
import GameKit
import AVFoundation
import Foundation

struct Alphabet {
    let description: String}

class ViewController: UIViewController {
    var player : AVPlayer?
    var alphabets = [Alphabet]()
    var alphabetCount = 0
    var shuffledDistribution: GKShuffledDistribution!
    var currentalphabetNumber = 0
    
    
    @IBOutlet weak var alphabetsTextField: UITextField!
    
    @IBOutlet weak var reverseButton: UIButton!
    @IBOutlet weak var rightsideupButton: UIButton!
    
    func voc(){
        //alphabets random
       
        alphabets.append(Alphabet(description: "ARE"))
        alphabets.append(Alphabet(description: "BIN"))
        alphabets.append(Alphabet(description: "BUT"))
        alphabets.append(Alphabet(description: "DEER"))
        alphabets.append(Alphabet(description: "DOOR"))
        alphabets.append(Alphabet(description: "DEEM"))
        alphabets.append(Alphabet(description: "DOT"))
        alphabets.append(Alphabet(description: "EVIL"))
        alphabets.append(Alphabet(description: "GOD"))
        alphabets.append(Alphabet(description: "GNAT"))
        alphabets.append(Alphabet(description: "GULP"))
        alphabets.append(Alphabet(description: "GUT"))
        alphabets.append(Alphabet(description: "KEEL"))
        alphabets.append(Alphabet(description: "LOOP"))
        alphabets.append(Alphabet(description: "MEET"))
        alphabets.append(Alphabet(description: "NIP"))
        alphabets.append(Alphabet(description: "NOT"))
        alphabets.append(Alphabet(description: "PAN"))
        alphabets.append(Alphabet(description: "PART"))
        alphabets.append(Alphabet(description: "PETS"))
        alphabets.append(Alphabet(description: "POTS"))
        alphabets.append(Alphabet(description: "RAIL"))
        alphabets.append(Alphabet(description: "RAM"))
        alphabets.append(Alphabet(description: "RAW"))
        alphabets.append(Alphabet(description: "TEN"))
        alphabets.append(Alphabet(description: "TOPS"))
       
        shuffledDistribution = GKShuffledDistribution(lowestValue: 0, highestValue: alphabets.count - 1)
        currentalphabetNumber  = shuffledDistribution.nextInt()
        let alphabet = alphabets[currentalphabetNumber]
        alphabetCount = 1
        alphabetsTextField.text = alphabet.description
    }
   
    @IBAction func rightsideupButtonPressed(_ sender: UIButton) {
        
    voc()
        //speak
        let speech = AVSpeechUtterance(string: alphabetsTextField.text!)
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(speech)
       
    }
    
    
    @IBAction func reverseButtonPressed(_ sender: UIButton) {
        
        alphabets[0].description
         
        
        //reversed
        alphabetsTextField.text = String(Array(alphabetsTextField.text!.characters).reversed())
        
        
        
        //speak
        let speech = AVSpeechUtterance(string: alphabetsTextField.text!)
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(speech)
        
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

