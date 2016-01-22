//
//  ViewController.swift
//  Stopwatch
//
//  Created by Regis Family on 10/22/15.
//  Copyright © 2015 Regis Family. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var seconds = 00
    var minutes = 00
    var hours = 00

    @IBOutlet var timerLabel: UILabel!
    
    func increaseTimer() {
        
        seconds++
        
        if seconds == 60 {
            minutes++
            seconds = 00
        }
        
        if minutes == 60 {
            hours++
            minutes = 00
        }
        
        timerLabel.text = "\(hours): \(minutes): \(seconds)"
    }
    
    @IBAction func play(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
    }
    
    
    @IBAction func reset(sender: AnyObject) {
        
        timer.invalidate()
        
        seconds = 00
        
        minutes = 00
        
        hours = 00
        
        timerLabel.text = "00:00:00"
        
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

