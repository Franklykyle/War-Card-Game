//
//  ViewController.swift
//  WeCardGame
//
//  Created by Kyle Franklin on 4/22/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var LeftImageView: UIImageView!
    
    @IBOutlet weak var RightImageView: UIImageView!
    
    
    @IBOutlet weak var LeftScoreLabel: UILabel!
    
    
    @IBOutlet weak var RightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }


    @IBAction func dealTapped(_ sender: Any) {
        
        //Randomize some numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        LeftImageView.image = UIImage(named: "card\(leftNumber)")
       
        
        RightImageView.image = UIImage(named: "card\(rightNumber)")
        
        // Compare the random numbers
        if leftNumber > rightNumber {
            
            // Left side wins
            leftScore += 1
            
            LeftScoreLabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber {
            
            // Right side wins
            rightScore += 1
            
            RightScoreLabel.text = String(rightScore)
        }
        else {
            // Tie
        }
    }
    
 
    
    
}

