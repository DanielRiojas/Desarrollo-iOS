//
//  CostumTableViewCell.swift
//  tarea5
//
//  Created by Daniel Riojas on 27/09/21.
//

import UIKit

class CostumTableViewCell: UITableViewCell {
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var lbNombre: UILabel!
    @IBOutlet weak var lbNac: UILabel!
    @IBOutlet weak var lbGoles: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
