//
//  TableViewCell.swift
//  dict_array_alamof
//
//  Created by JIJO G OOMMEN on 13/08/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet var namelabel: UILabel!
    @IBOutlet var emaillabel: UILabel!
    @IBOutlet var genderlabel: UILabel!
    
  
    @IBOutlet var homelabel: UILabel!
    @IBOutlet var phonelabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
