//
//  ViewControllerPrisma.swift
//  Tarea3
//
//  Created by Daniel Riojas on 07/09/21.
//

import UIKit

class ViewControllerPrisma: UIViewController {

    @IBOutlet weak var imgPrisma: UIImageView!
    @IBOutlet weak var tfLargo: UITextField!
    @IBOutlet weak var tfAncho: UITextField!
    @IBOutlet weak var tfAlto: UITextField!
    @IBOutlet weak var btArea: UIButton!
    @IBOutlet weak var btVlumen: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(sender as! UIButton) == btArea {
            let vistIni = segue.destination as! ViewController
            vistIni.img = imgPrisma!
            vistIni.largo = tfLargo.text!
            vistIni.ancho = tfAncho.text!
            vistIni.altura = tfAlto.text!
            vistIni.op = 0
        }
        else if (sender as! UIButton) == btVlumen {
            let vistIni = segue.destination as! ViewController
            vistIni.img = imgPrisma!
            vistIni.largo = tfLargo.text!
            vistIni.ancho = tfAncho.text!
            vistIni.altura = tfAlto.text!
            vistIni.op = 1
        }
    }
    

}
