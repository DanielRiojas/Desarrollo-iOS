//
//  ViewController.swift
//  autoaprendizaje
//
//  Created by Daniel Riojas on 09/11/21.
//

import UIKit


class ViewController: UIViewController {
    
    var listaNumeros  = [1,2,3,4,5]
    var listaLetras = ["a","b","c","d","e","f"]
    var selectedNumber : String = "1"
    var selectedChar : String = "a"
    
    @IBOutlet weak var pickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
    }
}

extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return listaNumeros.count
        }
        return listaLetras.count
    }
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            selectedNumber = String(listaNumeros[row])
            return String(listaNumeros[row])
        }
        selectedChar = listaLetras[row]
        return listaLetras[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let alerta = UIAlertController(title: "Mensaje", message: "Seleccionó: " + selectedNumber + " - " + selectedChar, preferredStyle: .actionSheet)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alerta.addAction(okAction)
        self.present(alerta,animated: true)
    }
}
