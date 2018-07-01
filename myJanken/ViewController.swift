//
//  ViewController.swift
//  myJanken
//
//  Created by hanako on 2018/06/16.
//  Copyright © 2018年 hanako. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var answerImageView: UIImageView!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    var answerNumber = 0
    
    let answerNumberGu = 0
    let answerNumberChoki = 1
    let answerNumberPa = 2
    
    
    @IBAction func shuffleAction(_ sender: Any) {
        
        var newAnswerNumber = 0
        
        repeat {
            newAnswerNumber = Int(arc4random_uniform(3))
        } while answerNumber == newAnswerNumber
        
        answerNumber = newAnswerNumber
        
        if answerNumber == answerNumberGu {
            answerLabel.text = "ぐー"
            answerImageView.image = UIImage(named: "gu")
        } else if answerNumber == answerNumberChoki {
            answerLabel.text = "ちょき"
            answerImageView.image = UIImage(named: "choki")
        } else if answerNumber == answerNumberPa {
            answerLabel.text = "ぱー"
            answerImageView.image = UIImage(named: "pa")
        }
    }
}

