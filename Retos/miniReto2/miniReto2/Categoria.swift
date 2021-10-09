//
//  Categoria.swift
//  miniReto2
//
//  Created by Daniel Riojas on 07/10/21.
//

import UIKit

class Categoria: NSObject {
    
    var titulo : String
    var color : UIColor
    
    init(titulo: String, color: UIColor) {
        self.titulo = titulo
        self.color = color
    }
}
