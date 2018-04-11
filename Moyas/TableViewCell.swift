//
//  TableViewCell.swift
//  Moyas
//
//  Created by User on 11/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    var radioButton : DLRadioButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
