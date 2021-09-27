//
//  ViewControllerAgregar.swift
//  demoProtocolos
//
//  Created by Daniel Riojas on 27/09/21.
//

import UIKit

protocol protocoloAgregaJuagdor {
    func agregaJugador(jug: Jugador)
}

class ViewControllerAgregar: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfPuntos: UITextField!
    
    var delegado : protocoloAgregaJuagdor!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func guardaJugador(_ sender: UIButton) {
        var jugador = Jugador(nombre: tfNombre.text!, puntos: Int(tfPuntos.text!)!, foto: imgFoto.image)
        delegado.agregaJugador(jug: jugador)
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func agregarFotoJugador(_ sender: UITapGestureRecognizer) {
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
    
    //MARK: - Métodos de delegado de UIImage Picker Controller
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let foto = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        imgFoto.image = foto
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }

}
