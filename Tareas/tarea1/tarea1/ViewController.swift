//
//  ViewController.swift
//  tarea1
//
//  Created by Daniel Riojas on 18/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfRadio: UITextField!
    @IBOutlet weak var tfArea: UITextField!
    @IBOutlet weak var tfPerimetro: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(quitaTeclado))
                
        view.addGestureRecognizer(tap)
    }

    @IBAction func calcularAP(_ sender: UIButton) {
        if let radio = Double(tfRadio.text!) {
            let area = round((Double.pi * pow(radio, 2)) * 100) / 100.0
            let perimetro = round((2 * Double.pi * radio) * 100) / 100.0
            
            tfArea.text = String(area) + " cm^2"
            tfPerimetro.text = String(perimetro) + " cm"
        }
        else{
            let alert = UIAlertController(title: "Error", message: "El campo debe tener valor númerico", preferredStyle: .alert)
                        
            let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                        
            alert.addAction(action)
                        
            present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func quitaTeclado() {
        view.endEditing(true)
    }
    
}

