//
//  Jugador.swift
//  tableViews
//
//  Created by Daniel Riojas on 20/09/21.
//

import UIKit

class Jugador: NSObject {
    var nombre : String = ""
    var puntos : Int = 0
    
    init(nombre : String, puntos: Int){
        self.nombre = nombre
        self.puntos = puntos
    }
}
