//
//  TableViewController.swift
//  demoProtocolos
//
//  Created by Daniel Riojas on 27/09/21.
//

import UIKit

class TableViewController: UITableViewController, protocoloAgregaJuagdor {
    
    
    
    var listaJugadores = [
        Jugador(nombre: "Eren", puntos: 1200, foto: UIImage(named: "eren")),
        Jugador(nombre: "Mikasa", puntos: 1575, foto: UIImage(named: "mikasa")),
        Jugador(nombre: "Armin", puntos: 1120, foto: UIImage(named: "armin")),
        Jugador(nombre: "Levi", puntos: 1430, foto: UIImage(named: "levi")),
        Jugador(nombre: "Zeke", puntos: 1345, foto: UIImage(named: "zeke"))
    ]


    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        title = "Jugadores"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaJugadores.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = listaJugadores[indexPath.row].nombre
        
        if let foto = listaJugadores[indexPath.row].foto {
            cell.imageView?.image = foto
        }
        else {
            cell.imageView?.image = UIImage(named: "alas")
        }
        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "mostrar" {
            let vistaDetalle = segue.destination as! ViewController
            let indice = tableView.indexPathForSelectedRow!
            vistaDetalle.unJugador = listaJugadores[indice.row]
        }
        else {
            let vistaAgregar = segue.destination as! ViewControllerAgregar
            vistaAgregar.delegado = self
            
        }
    }
    
    //MARK: - Mètodos del protocolo Agrega Jugador
    func agregaJugador(jug: Jugador) {
        listaJugadores.append(jug)
        tableView.reloadData()
    }

}
