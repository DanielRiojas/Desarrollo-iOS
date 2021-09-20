//
//  ViewController.swift
//  tableViews
//
//  Created by Daniel Riojas on 20/09/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var listaJugadores = [
        Jugador(nombre: "Eren", puntos: 1200, foto: UIImage(named: "eren")),
        Jugador(nombre: "Mikasa", puntos: 1575, foto: UIImage(named: "mikasa")),
        Jugador(nombre: "Armin", puntos: 1120, foto: UIImage(named: "armin")),
        Jugador(nombre: "Levi", puntos: 1430, foto: UIImage(named: "levi")),
        Jugador(nombre: "Zeke", puntos: 1345, foto: UIImage(named: "zeke"))
    ]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Jugadores"
    }


    //Métodos de Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaJugadores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda")!
        cell.textLabel?.text = listaJugadores[indexPath.row].nombre
        cell.detailTextLabel?.text = String(listaJugadores[indexPath.row].puntos)
        cell.imageView?.image = listaJugadores[indexPath.row].foto!
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaDetalle = segue.destination as! ViewControllerDetalle
        let indice = tableView.indexPathForSelectedRow!
        vistaDetalle.unJugador = listaJugadores[indice.row]
    }
}

