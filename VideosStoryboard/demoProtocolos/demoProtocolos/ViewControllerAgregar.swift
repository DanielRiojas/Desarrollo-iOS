//
//  ViewControllerAgregar.swift
//  demoProtocolos
//
//  Created by Daniel Riojas on 27/09/21.
//

import UIKit

protocol protocoloAgregaJuagdor {
    func agregaJugador(jug: Jugador)
}

class ViewControllerAgregar: UIViewController {
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfPuntos: UITextField!
    
    var delegado : protocoloAgregaJuagdor!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func guardaJugador(_ sender: UIButton) {
        var jugador = Jugador(nombre: tfNombre.text!, puntos: Int(tfPuntos.text!)!, foto: nil)
        delegado.agregaJugador(jug: jugador)
        navigationController?.popViewController(animated: true)
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
