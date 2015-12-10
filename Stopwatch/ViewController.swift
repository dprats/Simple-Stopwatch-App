//
//  ViewController.swift
//  Stopwatch
//
//  Created by diego prats on 12/10/15.
//  Copyright © 2015 diego prats. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = NSTimer()
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
        
        
    }
  

    @IBAction func play(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("timerFunction"), userInfo: nil, repeats: true)
        
        
    }

    @IBAction func stop(sender: AnyObject) {
        
        timer.invalidate()
        count = 0
        timeLabel.text = String(count)
        
    }
    
    func timerFunction(){
        ++count
        timeLabel.text = String(count)
    }
}

