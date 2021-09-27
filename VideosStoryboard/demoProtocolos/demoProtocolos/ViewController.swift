//
//  ViewController.swift
//  demoProtocolos
//
//  Created by Daniel Riojas on 27/09/21.
//

import UIKit

class ViewController: UIViewController {

    var unJugador : Jugador!
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var lbNombre: UILabel!
    @IBOutlet weak var lbPuntos: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Detalle jugador"
        imgFoto.image = unJugador.foto
        lbNombre.text = unJugador.nombre
        lbPuntos.text = String(unJugador.puntos)
    }


}

