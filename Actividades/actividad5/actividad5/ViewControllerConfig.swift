//
//  ViewControllerConfig.swift
//  actividad5
//
//  Created by Daniel Riojas on 07/10/21.
//

import UIKit

class ViewControllerConfig: UIViewController {

    @IBOutlet weak var tfNombreUsuario: UITextField!
    @IBOutlet weak var scCeldaSize: UISegmentedControl!
    @IBOutlet weak var sw: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        actalizaInterfaz()
    }
    
    func actalizaInterfaz(){
        let defaults = UserDefaults.standard
        
        if let texto = defaults.value(forKey: "texto") as? String {
            tfNombreUsuario.text = texto
        }
        
        let segmento = defaults.value(forKey: "segmento")
        scCeldaSize.selectedSegmentIndex = segmento as! Int
        
        let booleano = defaults.bool(forKey: "booleano")
        sw.isOn = booleano
    }
        
    
    @IBAction func guardaDatosInterfaz(){
        let defaults = UserDefaults.standard
        defaults.setValue(tfNombreUsuario.text, forKey: "texto")
        defaults.set(scCeldaSize.selectedSegmentIndex, forKey: "segmento")
        defaults.set(sw.isOn, forKey: "booleano")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        guardaDatosInterfaz()
        let vistaIni = presentingViewController as! ViewController
        vistaIni.actalizaInterfaz()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
