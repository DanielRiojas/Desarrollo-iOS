//
//  Iphone.swift
//  demoMasTableViews
//
//  Created by Daniel Riojas on 20/09/21.
//

import UIKit

class Iphone: NSObject {
    var tipo : String
    var capacidad : String
    var precio : Float
    var foto : UIImage!

    init(tipo: String, capacidad: String, precio: Float, foto: UIImage!) {
        self.tipo = tipo
        self.capacidad = capacidad
        self.precio = precio
        self.foto = foto
    }
}
