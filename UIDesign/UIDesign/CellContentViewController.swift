//
//  CellContentViewController.swift
//  UIDesign
//
//  Created by Douglas Silva on 10/16/16.
//  Copyright © 2016 Douglas Silva. All rights reserved.
//

import UIKit

class CellContentViewController: UIViewController {

    @IBOutlet weak var deviceLabel: UILabel!
    
    var deviceName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.deviceLabel.text = self.deviceName

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
