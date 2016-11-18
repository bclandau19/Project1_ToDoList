//
//  ListOfItemsTableViewCell.swift
//  ToDoList-BenLandau
//
//  Created by Benjamin Landau on 11/15/16.
//  Copyright © 2016 Benjamin Landau. All rights reserved.
//

import UIKit

class ListOfItemsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var itemsLabelOutlet: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
