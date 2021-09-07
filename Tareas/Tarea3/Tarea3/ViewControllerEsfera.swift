//
//  ViewControllerEsfera.swift
//  Tarea3
//
//  Created by Daniel Riojas on 07/09/21.
//

import UIKit

class ViewControllerEsfera: UIViewController {

    @IBOutlet weak var imgEsfera: UIImageView!
    @IBOutlet weak var tfRadio: UITextField!
    @IBOutlet weak var btArea: UIButton!
    @IBOutlet weak var btVolumen: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(sender as! UIButton) == btArea {
            let vistIni = segue.destination as! ViewController
            vistIni.img = imgEsfera!
            vistIni.radio = tfRadio.text!
            vistIni.op = 0
        }
        else if (sender as! UIButton) == btVolumen {
            let vistIni = segue.destination as! ViewController
            vistIni.img = imgEsfera!
            vistIni.radio = tfRadio.text!
            vistIni.op = 1
        }
    }

}
