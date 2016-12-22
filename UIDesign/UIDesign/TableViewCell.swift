//
//  TableViewCell.swift
//  UIDesign
//
//  Created by Douglas Silva on 10/16/16.
//  Copyright © 2016 Douglas Silva. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var cellIcon: UIImageView!
    
    @IBOutlet weak var cellDevice: UILabel!
    
    @IBOutlet weak var cellButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
