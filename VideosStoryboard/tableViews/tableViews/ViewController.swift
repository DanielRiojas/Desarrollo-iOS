//
//  ViewController.swift
//  tableViews
//
//  Created by Daniel Riojas on 20/09/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var listaJugadores = [
        Jugador(nombre: "Karla", puntos: 1200),
        Jugador(nombre: "Carlos", puntos: 1575),
        Jugador(nombre: "Arturo", puntos: 1120)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    //Métodos de Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaJugadores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda")!
        cell.textLabel?.text = listaJugadores[indexPath.row].nombre
        cell.detailTextLabel?.text = String(listaJugadores[indexPath.row].puntos)
        return cell
    }
}

