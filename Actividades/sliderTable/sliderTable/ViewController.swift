//
//  ViewController.swift
//  sliderTable
//
//  Created by Daniel Riojas on 24/11/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    
    /*celdaSintomas(nombre: "Fiebre"),
     celdaSintomas(nombre: "Tos"),
     celdaSintomas(nombre: "Cansancio"),
     celdaSintomas(nombre: "Perdida olfato"),
     celdaSintomas(nombre: "Perdida del sabor")
     */
    var listaSintomas = [
        sintomas(nombre: "Fiebre", tiene: false),
        sintomas(nombre: "Dolor de Cabeza", tiene: false),
        sintomas(nombre: "Tos", tiene: false),
        sintomas(nombre: "Pérdida olfato", tiene: false),
        sintomas(nombre: "Pérdida sabor", tiene: false)
    ]
    
    var nV : Float = 0

    @IBOutlet weak var tvs: UITableView!
    @IBOutlet weak var slider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        slider.setValue(0, animated: false)
    }
    
    /*@IBAction func changeValue(_ sender: Any) {
        var nV : Float = 0
        if(sw.isOn){
            nV += 1
        }
        UIView.animate(withDuration: 0.5, animations: {
            self.slider.setValue(nV, animated: true)
        })
    }*/
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaSintomas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tvs.dequeueReusableCell(withIdentifier: "celda") as! CustomTableViewCell
        
        cell.lbNombre.text = listaSintomas[indexPath.row].nombre
        cell.sw.isOn = listaSintomas[indexPath.row].tiene
        
        var nV : Float = 0
        if(cell.sw.isOn){
            nV += 0.2
        }
        UIView.animate(withDuration: 0.5, animations: {
            self.slider.setValue(nV, animated: true)
        })
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    
    @IBAction func changeValue(_ sender: UISwitch) {
        if(sender.isOn == true){
            nV += 0.2
        }
        else if(sender.isOn == false) {
            nV -= 0.2
        }
        UIView.animate(withDuration: 0.5, animations: {
            self.slider.setValue(self.nV, animated: true)
        })
    }
    
}


