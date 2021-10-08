//
//  AgregaViewController.swift
//  tarea5
//
//  Created by Daniel Riojas on 27/09/21.
//

import UIKit

protocol protocoloAgregaJuagdor {
    func agregaJugador(jug: Jugador)
}

class AgregaViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfNacionalidad: UITextField!
    @IBOutlet weak var tfGoles: UITextField!
    @IBOutlet weak var imgFoto: UIImageView!
    
    var delegado : protocoloAgregaJuagdor!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btGuardar(_ sender: UIButton) {
        var jugador = Jugador(nombre: tfNombre.text!, nacionalidad: tfNacionalidad.text!, goles: Int(tfGoles.text!)!, foto: imgFoto.image)
        delegado.agregaJugador(jug: jugador)
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func agregarFotoJugador(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
                
        present(imagePicker, animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let foto = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        imgFoto.image = foto
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
}
