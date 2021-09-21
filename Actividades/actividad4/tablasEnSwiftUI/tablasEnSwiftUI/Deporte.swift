//
//  Deporte.swift
//  tablasEnSwiftUI
//
//  Created by Daniel Riojas on 21/09/21.
//

import UIKit

class Deporte: NSObject {
    var nombre : String
    var imagen : String
    
    init(nombre: String, imagen: String) {
        self.nombre = nombre
        self.imagen = imagen
    }
}
