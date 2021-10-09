//
//  TableViewController.swift
//  miniReto2
//
//  Created by Daniel Riojas on 07/10/21.
//

import UIKit

class TableViewController: UITableViewController, protocoloActualizaCategoria {
    
    
    @IBOutlet weak var btAgregar: UIBarButtonItem!
    var listaCategorias = [Categoria]()
    var coloresParaElegir = [UIColor.blue, UIColor.green, UIColor.magenta, UIColor.red, UIColor.yellow, UIColor.orange, UIColor.cyan]

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Categorías"
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }
    
    //Funcion para agregar categoría
    @IBAction func agregarCategoria(_ sender: UIBarButtonItem) {
        if coloresParaElegir.count > 0 {
            let nuevaCategoria = Categoria(titulo: "Categoría Nueva", color: coloresParaElegir.removeFirst().withAlphaComponent(0.5))
            listaCategorias.append(nuevaCategoria)
            tableView.reloadData()
        }
        
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaCategorias.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        // Configure the cell...
        cell.textLabel?.text = listaCategorias[indexPath.row].titulo
        cell.backgroundColor = listaCategorias[indexPath.row].color
        
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
            coloresParaElegir.append(listaCategorias[indexPath.row].color)
            listaCategorias.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let temp = listaCategorias[fromIndexPath.row]
        listaCategorias[fromIndexPath.row] = listaCategorias[to.row]
        listaCategorias[to.row] = temp
    }
    

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaDetalle = segue.destination as! ViewController
        let indice = tableView.indexPathForSelectedRow!
        vistaDetalle.unaCategoria = listaCategorias[indice.row]
        vistaDetalle.coloresAElegr = coloresParaElegir
        vistaDetalle.delegado = self
        vistaDetalle.indice = indice.row
    }
    
    //MARK: - Métodos del protocolo Actualizar Jugador
    func actualizaCategoria(cat: Categoria, index: Int, colores: [UIColor] ) {
        listaCategorias[index] = cat
        tableView.reloadData()
        coloresParaElegir = colores
    }

}
