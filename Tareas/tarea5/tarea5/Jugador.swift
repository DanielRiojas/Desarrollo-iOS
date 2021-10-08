//
//  Jugador.swift
//  tarea5
//
//  Created by Daniel Riojas on 27/09/21.
//

import UIKit

class Jugador: NSObject {
    var nombre : String
    var nacionalidad : String
    var goles : Int
    var foto : UIImage!
    
    init(nombre: String, nacionalidad: String, goles: Int, foto: UIImage!) {
        self.nombre = nombre
        self.nacionalidad = nacionalidad
        self.goles = goles
        self.foto = foto
    }
}
