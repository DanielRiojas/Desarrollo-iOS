//
//  CustomTableViewCell.swift
//  sliderTable
//
//  Created by Daniel Riojas on 24/11/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lbNombre: UILabel!
    @IBOutlet weak var sw: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
