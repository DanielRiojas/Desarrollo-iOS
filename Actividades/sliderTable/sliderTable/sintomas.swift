//
//  sintomas.swift
//  sliderTable
//
//  Created by Daniel Riojas on 24/11/21.
//

import UIKit

class sintomas: NSObject {
    var nombre : String
    var tiene : Bool
    
    init(nombre: String, tiene: Bool) {
        self.nombre = nombre
        self.tiene = tiene
    }
}
