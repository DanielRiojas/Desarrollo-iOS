//
//  ViewController.swift
//  miniReto2
//
//  Created by Daniel Riojas on 07/10/21.
//

import UIKit

protocol protocoloActualizaCategoria {
    func actualizaCategoria(cat: Categoria, index: Int, colores: [UIColor])
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var delegado : protocoloActualizaCategoria!
    var unaCategoria : Categoria!
    var indice : Int!
    var coloresAElegr : [UIColor]!
    var oldColor : UIColor!
    var newColorIndex : Int = -1
    @IBOutlet weak var tfTitulo: UITextField!
    @IBOutlet weak var tableViewColores: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tfTitulo.text = unaCategoria.titulo
        tfTitulo.backgroundColor = unaCategoria.color
    }
    
    
    //MARK: - Métodos Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        coloresAElegr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda2")!
        cell.backgroundColor = coloresAElegr[indexPath.row].withAlphaComponent(0.5)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        oldColor = tfTitulo.backgroundColor
        tfTitulo.backgroundColor = coloresAElegr[indexPath.row]
        coloresAElegr[indexPath.row] = oldColor
        tableViewColores.reloadData()
    }
    
    //MARK: - Métodos del delegado
    override func viewWillDisappear(_ animated: Bool) {
        unaCategoria.titulo = tfTitulo.text!
        unaCategoria.color = tfTitulo.backgroundColor!
        delegado.actualizaCategoria(cat: unaCategoria, index: indice, colores: coloresAElegr)
    }
}

