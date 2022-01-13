//
//  ViewController.swift
//  TimerTutorial
//
//  Created by Hamit Seyrek on 13.01.2022.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    var counter = 0
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counter = 10
            timeLabel.text = "Time : \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
    }
        
    @objc func timerFunc (){
        timeLabel.text = "Time : \(counter)"
        counter -= 1
        if counter == 0 {
            timer.invalidate()
            timeLabel.text = "Game is over"
        }
    }
    @IBAction func buttonClicked(_ sender: Any) {
    }
}

