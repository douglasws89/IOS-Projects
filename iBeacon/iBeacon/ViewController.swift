//
//  ViewController.swift
//  iBeacon
//
//  Created by Douglas MacbookPro on 5/25/17.
//  Copyright © 2017 Douglas MacbookPro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beaconID: UILabel!
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        timerWithInterval()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func timerWithInterval(){
        timer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(self.updateLabel), userInfo: nil, repeats: true)
    }
    
    func updateLabel(){
        beaconID.text = beaconIDString
    }

}

