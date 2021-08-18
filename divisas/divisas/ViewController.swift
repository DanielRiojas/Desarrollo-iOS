//
//  ViewController.swift
//  divisas
//
//  Created by Daniel Riojas on 18/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfTipoCambio: UITextField!
    @IBOutlet weak var tfPesos: UITextField!
    @IBOutlet weak var tfDolares: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calcular(_ sender: UIButton) {
        
        if let tipoCambio = Double(tfTipoCambio.text!),
           let pesos = Double(tfPesos.text!) {
            
            let dolares = pesos / tipoCambio
            
            tfDolares.text = String(dolares)
        }
        
    }
    
}

