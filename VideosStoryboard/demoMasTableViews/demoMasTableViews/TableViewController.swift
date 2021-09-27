//
//  TableViewController.swift
//  demoMasTableViews
//
//  Created by Daniel Riojas on 20/09/21.
//

import UIKit

class TableViewController: UITableViewController {
    
    var listaiPhones = [
        Iphone(tipo: "iPhone 11 Pro Max", capacidad: "64 Gb", precio: 24999, foto: UIImage(named: "iphone11")),
        Iphone(tipo: "iPhone 11", capacidad: "64 Gb", precio: 17499, foto: UIImage(named: "iphone11promax")),
        Iphone(tipo: "iPhone SE 2", capacidad: "64 Gb", precio: 10999, foto: UIImage(named: "iphonese2")),
        Iphone(tipo: "iPhone XR", capacidad: "64 Gb", precio: 14999, foto: UIImage(named: "iphonexr"))
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaiPhones.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! CustomTableViewCell

        // Configure the cell...
        cell.lbTipo.text = listaiPhones[indexPath.row].tipo
        cell.lbCapacidad.text = listaiPhones[indexPath.row].capacidad
        cell.lbPrecio.text = String(listaiPhones[indexPath.row].precio)
        cell.imgFoto.image = listaiPhones[indexPath.row].foto

        return cell
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
            listaiPhones.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

        let tmp = listaiPhones[fromIndexPath.row]
        listaiPhones[fromIndexPath.row] = listaiPhones[to.row]
        listaiPhones[to.row] = tmp
        
    }
    

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
