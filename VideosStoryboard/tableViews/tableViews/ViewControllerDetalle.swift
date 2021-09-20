//
//  ViewControllerDetalle.swift
//  tableViews
//
//  Created by Daniel Riojas on 20/09/21.
//

import UIKit

class ViewControllerDetalle: UIViewController {
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var lbNombre: UILabel!
    @IBOutlet weak var lbPuntos: UILabel!
    
    var unJugador : Jugador!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imgFoto.image = unJugador.foto
        lbNombre.text = unJugador.nombre
        lbPuntos.text = String(unJugador.puntos)
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
