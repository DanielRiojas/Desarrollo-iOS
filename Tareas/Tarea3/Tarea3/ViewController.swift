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
    @IBOutlet weak var lb1: UILabel!
    @IBOutlet weak var lb2: UILabel!
    @IBOutlet weak var imgGeo: UIImageView!
    @IBOutlet weak var bottomView: UIView!
    
    var area : Double = 0
    var volumen : Double = 0
    var radio : String = ""
    var largo : String!
    var ancho : String!
    var altura : String!
    var img : UIImageView!
    var op : Int!
    var color : UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func unwindEsfera(segue: UIStoryboardSegue){
        if(op == 0) {
            area = 4 * 3.14 * pow(Double(radio)!, 2)
            lb1.text = "Area de una esfera"
            lb2.text = "Radio: " + radio + "\n" + "Area: " + String(area)
            imgGeo.image = img.image
        }
        if(op == 1) {
            volumen = 4/3 * 3.14 * pow(Double(radio)!, 3)
            lb1.text = "Volumen de una esfera"
            lb2.text = "Radio: " + radio + "\n" + "Volumen: " + String(volumen)
            imgGeo.image = img.image
        }
    }
    
    @IBAction func unwindPrisma(segue: UIStoryboardSegue){
        if(op == 0) {
            let l : Double = Double(largo)!
            let a : Double = Double(ancho)!
            let h : Double = Double(altura)!
            area = l * a * 2 + l * a * 2 + a * h * 2
            lb1.text = "Area de un prisma"
            lb2.text = "Largo: " + largo + "\n" +
            "Ancho: " + ancho + "\n" + "Altura: " + altura + "\n" + "Area: " + String(area)
            imgGeo.image = img.image
        }
        if(op == 1) {
            let l : Double = Double(largo)!
            let a : Double = Double(ancho)!
            let h : Double = Double(altura)!
            volumen = l * a * h
            lb1.text = "Volumen de un prisma"
            lb2.text = "Largo: " + largo + "\n" +
            "Ancho: " + ancho + "\n" + "Altura: " + altura + "\n" + "Volumen: " + String(volumen)
            imgGeo.image = img.image
        }
    }
    
    @IBAction func unwindConfig(segue: UIStoryboardSegue) {
        bottomView.backgroundColor = color
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "sEsfera"){
            segue.destination as! ViewControllerEsfera
        }
        else if (segue.identifier == "sPrisma"){
            segue.destination as! ViewControllerPrisma
        }
        else if (segue.identifier == "sConfig"){
            segue.destination as! ViewControllerConfig
        }
    }
}

