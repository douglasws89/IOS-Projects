//
//  MainViewController.swift
//  UIDesign
//
//  Created by Douglas Silva on 10/16/16.
//  Copyright © 2016 Douglas Silva. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource {
    
    let Devices = ["Macbook", "AC", "Light"]
    
    @IBOutlet weak var devicesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        devicesTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Devices.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell: UITableViewCell = devicesTableView.dequeueReusableCell(withIdentifier: "prototype1", for: indexPath)
        
        myCell.textLabel?.text = Devices[indexPath.row]
        myCell.imageView?.image = UIImage(named: Devices[indexPath.row])
        myCell.textLabel?.text = Devices[indexPath.row]
        
        return myCell
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
