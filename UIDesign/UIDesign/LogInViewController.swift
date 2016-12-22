//
//  LogInViewController.swift
//  UIDesign
//
//  Created by Douglas Silva on 10/16/16.
//  Copyright © 2016 Douglas Silva. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
        
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.blackTranslucent
        nav?.barTintColor = UIColor.white
        
        let backImage = UIImage(named: "backButton")
        nav?.backIndicatorImage = backImage
        nav?.backIndicatorTransitionMaskImage = backImage
        nav?.backItem?.title = ""
        nav?.tintColor = UIColor.init(red: 95/255, green: 158/255, blue: 52/255, alpha: 1)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
