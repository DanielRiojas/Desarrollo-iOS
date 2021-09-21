//
//  TableViewController.swift
//  tarea4
//
//  Created by Daniel Riojas on 20/09/21.
//

import UIKit

class TableViewController: UITableViewController {
    
    var listaPaises = [
        Bandera(bandera: "🇲🇽", nombre: "México"),
        Bandera(bandera: "🇺🇸", nombre: "Estados Unidos"),
        Bandera(bandera: "🇫🇷", nombre: "Francia"),
        Bandera(bandera: "🇩🇪", nombre: "Alemania"),
        Bandera(bandera: "🇯🇵", nombre: "Japòn"),
        Bandera(bandera: "🇿🇦", nombre: "Sudáfrica"),
        Bandera(bandera: "🇺🇾", nombre: "Uruguay"),
        Bandera(bandera: "🇳🇿", nombre: "Nueva Zelanda")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        title = "Países"
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaPaises.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        cell.textLabel?.text = listaPaises[indexPath.row].bandera
        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            listaPaises.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
            let temp = listaPaises[fromIndexPath.row]
            listaPaises.remove(at: fromIndexPath.row)
            listaPaises.insert(temp, at: to.row)
    }
    

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let vistaDetalle = segue.destination as! ViewController
        let indice = tableView.indexPathForSelectedRow!
        vistaDetalle.unaBandera = listaPaises[indice.row]
    }

}
