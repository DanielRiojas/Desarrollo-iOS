//
//  ViewController.swift
//  tarea4
//
//  Created by Daniel Riojas on 20/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lbBandera: UILabel!
    @IBOutlet weak var lbNombre: UILabel!
    
    var unaBandera : Bandera!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lbBandera.text = unaBandera.bandera
        lbNombre.text = unaBandera.nombre
    }


}

