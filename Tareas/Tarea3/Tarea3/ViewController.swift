//
//  ViewController.swift
//  Tarea3
//
//  Created by Daniel Riojas on 06/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bEsfera: UIButton!
    @IBOutlet weak var bPrisma: UIButton!
    @IBOutlet weak var imgGeo: UIView!
    @IBOutlet weak var lb1: UILabel!
    @IBOutlet weak var lb2: UILabel!
    
    var area : Double = 0
    var volumen : Double = 0
    var radio : String = ""
    var largo : Double = 0
    var ancho : Double = 0
    var altura : Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func unwindEsfera(segue: UIStoryboardSegue){
        area = 4 * 3.14 * pow(Double(radio)!, 2)
        lb1.text = "Area de una esfera"
        lb2.text = "Radio: " + radio + "\n" + "Area: " + String(area)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "sEsfera"){
            segue.destination as! ViewControllerEsfera
        }
    }
}

