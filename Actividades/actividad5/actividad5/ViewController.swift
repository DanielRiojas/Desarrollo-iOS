//
//  ViewController.swift
//  actividad5
//
//  Created by Daniel Riojas on 06/10/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var lbNombreUsuario: UILabel!
    @IBOutlet weak var lbX: UITextField!
    @IBOutlet weak var lbY: UITextField!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var btAgregar: UIButton!
    @IBOutlet weak var btConfiguracion: UIButton!
    
    var listaCoordenadas = [Coordenada]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //UIApplication.shared se refiere a la aplicaciòn
        let app = UIApplication.shared
        
        //Me registro en el centro de notificaciones para que se llame al mètodo de guardarCoordenadas cuando la aplicaciòn se vaya al background
        NotificationCenter.default.addObserver(self, selector: #selector(guardarCoordenada), name: UIApplication.didEnterBackgroundNotification, object: app)
        
        //si hay archivo con datos, cargarlo, en caso de que no exista el archivo dejar la lista vacía
        if FileManager.default.fileExists(atPath: dataFileURL().path) {
            obtenerCoordenadas()
        }
        
        actalizaInterfaz()
    }
    
    //Funciòn para obtener la ruta de archivos de la app
    func dataFileURL() -> URL {
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let pathArchivo = documentsDirectory.appendingPathComponent("Coordenadas").appendingPathExtension("plist")
        return pathArchivo
        
    }
    
    //Funciòn conectada al boton agregar para agregar una nueva coordenada
    @IBAction func agregarCoordenada(_ sender: UIButton) {
        if let i = Int(lbX.text!), let j = Int(lbY.text!) {
            let nuevaCoordenada = Coordenada(x: Int(lbX.text!)!, y: Int(lbY.text!)!)
            listaCoordenadas.append(nuevaCoordenada)
            tableView.reloadData()
            
            lbX.text = ""
            lbY.text = ""
        }
    }
    
    //MARK: - Métodos Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaCoordenadas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda")!
        cell.textLabel?.text = "(" + String(listaCoordenadas[indexPath.row].x) + ", " + String(listaCoordenadas[indexPath.row].y) + ")"
        
        let defaults = UserDefaults.standard
        let color = defaults.bool(forKey: "booleano")
        if(color){
            cell.backgroundColor = .orange
        }
        else {
            cell.backgroundColor = .yellow
        }
        return cell
    }
    
    /*func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cambiarCelda(segmento: segmento)
    }*/
    
    //MARK: - Métodos para guardar y obtener los empleados
    @IBAction func guardarCoordenada() {
        do {
            let data = try PropertyListEncoder().encode(listaCoordenadas)
            try data.write(to: dataFileURL())
        }
        catch {
            print("Error al guardar los datos")
        }
    }
    
    func obtenerCoordenadas() {
        //antes de cargar datos, limpiar el arreglo listaCoordenadas
        listaCoordenadas.removeAll()
        
        do {
            let data = try Data.init(contentsOf: dataFileURL())
            listaCoordenadas = try PropertyListDecoder().decode([Coordenada].self, from: data)
        }
        catch {
            print("Error al cargar los datos del archivo")
        }
        
        //despuès de cargar los datos al arreglo listaEmpleados repinta el tableView
        tableView.reloadData()
    }
    
    //MARK: - Métodos user default
    func actalizaInterfaz(){
        let defaults = UserDefaults.standard
        
        if let texto = defaults.value(forKey: "texto") as? String {
            lbNombreUsuario.text = texto
        }
        
        let segmento = defaults.value(forKey: "segmento") as! Int
        cambiarCelda(segmento: segmento)
        
    }

    func cambiarCelda(segmento: Int) {
        if segmento == 0 {
            tableView.rowHeight = 30
        }
        if segmento == 1 {
            tableView.rowHeight = 50
        }
        if segmento == 2 {
            tableView.rowHeight = 70
        }
        tableView.reloadData()
    }
}

