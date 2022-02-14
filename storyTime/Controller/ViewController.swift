//
//  ViewController.swift
//  storyTime
//
//  Created by Anil Thomas on 11/15/21.
//

import UIKit

class ViewController: UIViewController {
    
    var storyTime = storyBrain()
    

    
    @IBOutlet weak var storyLine: UILabel!
    
    
    
    @IBOutlet weak var choiceOne: UIButton!
    
    
    
    @IBOutlet weak var choiceTwo: UIButton!
    
    
    @IBAction func optionSelected(_ sender: UIButton) {
        choiceOne.tag = 1
        choiceTwo.tag = 2
     //   print("option selected is \( sender.currentTitle)")
        storyTime.optionDecode(choiceSelected: sender.tag)
        
        updateUI()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
        // Do any additional setup after loading the view.
    }
    func updateUI(){
        
        
        storyLine.text = storyTime.updateStoryLine()
        var choiceArray = storyTime.updateChoice()
        
        choiceOne.setTitle(choiceArray[0], for: .normal)
        
        choiceTwo.setTitle(choiceArray[1], for: .normal)
        
        
        
    }

}

