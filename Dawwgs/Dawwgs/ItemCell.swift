//
//  ItemCell.swift
//  Dawwgs
//
//  Created by Khoa Le on 4/23/17.
//  Copyright © 2017 Eudaimonia. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell{
    @IBOutlet var categoriesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        categoriesLabel.adjustsFontForContentSizeCategory = true
    }
}
