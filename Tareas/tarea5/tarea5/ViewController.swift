//
//  ViewController.swift
//  tarea5
//
//  Created by Daniel Riojas on 27/09/21.
//

import UIKit

class ViewController: UIViewController {
    var unJugador : Jugador!
    @IBOutlet weak var fotoImg: UIImageView!
    @IBOutlet weak var lbNombre: UILabel!
    @IBOutlet weak var lbNacion: UILabel!
    @IBOutlet weak var lbGoles: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Detalle jugador"
        fotoImg.image = unJugador.foto
        lbNombre.text = unJugador.nombre
        lbNacion.text = unJugador.nacionalidad
        lbGoles.text = String(unJugador.goles)
    }
}

