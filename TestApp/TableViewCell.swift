//
//  TableViewCell.swift
//  TestApp
//
//  Created by epita on 04/04/2018.
//  Copyright © 2018 NOTNULL. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var LName: UILabel!
    @IBOutlet weak var LRank: UILabel!
    @IBOutlet weak var LType: UILabel!
    @IBOutlet weak var cellImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
