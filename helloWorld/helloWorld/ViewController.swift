//
//  ViewController.swift
//  helloWorld
//
//  Created by Daniel Riojas on 16/08/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var lbMensaje: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func saludar(_ sender: UIButton) {
        lbMensaje.text = "Hola " + tfNombre.text!
    }
}

