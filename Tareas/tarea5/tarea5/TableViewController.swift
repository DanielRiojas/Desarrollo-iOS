//
//  TableViewController.swift
//  tarea5
//
//  Created by Daniel Riojas on 27/09/21.
//

import UIKit

class TableViewController: UITableViewController, protocoloAgregaJuagdor {
    
    var listaJugadores = [
        Jugador(nombre: "Messi", nacionalidad: "Arg", goles: 771, foto: UIImage(named: "messi"))
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! CostumTableViewCell

        // Configure the cell...
        cell.lbNombre.text = listaJugadores[indexPath.row].nombre
        cell.lbNac.text = listaJugadores[indexPath.row].nacionalidad
        cell.lbGoles.text = String(listaJugadores[indexPath.row].goles)
        cell.imgFoto.image = listaJugadores[indexPath.row].foto

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
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mostrar" {
            let vistaDetalle = segue.destination as! ViewController
            let indice = tableView.indexPathForSelectedRow!
            vistaDetalle.unJugador = listaJugadores[indice.row]
        }
        else {
            let vistaAgregar = segue.destination as! AgregaViewController
            vistaAgregar.delegado = self
        }
    }
    
    //MARK: - Mètodos del protocolo Agrega Jugador
    func agregaJugador(jug: Jugador) {
        listaJugadores.append(jug)
        tableView.reloadData()
    }
}
