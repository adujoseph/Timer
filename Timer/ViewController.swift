//
//  ViewController.swift
//  Timer
//
//  Created by MAC on 30/11/2018.
//  Copyright © 2018 MAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var time = 210
    
    @objc func decreaseTimer(){
        if time > 0{
            time -= 1
            textLabel.text = String(time)
        } else{
            timer.invalidate()
        }
    
    }
    
    @IBOutlet weak var textLabel: UILabel!
    
    
    @IBAction func play(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func plusTen(_ sender: Any) {
        if time <= 200{
            time = time + 10
            textLabel.text = String(time)
        }
    }
    
    @IBAction func minusTen(_ sender: Any) {
        if time > 10{
            time = time - 10
            textLabel.text = String(time)
        }
    }
    @IBAction func reset(_ sender: Any) {
        time = 210
        textLabel.text = String(time)
        timer.invalidate()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

