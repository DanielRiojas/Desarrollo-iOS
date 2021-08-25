//
//  ViewController.swift
//  sliderAnimation
//
//  Created by Daniel Riojas on 25/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbMensaje: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(lbMensaje.frame.origin.x)
        print(lbMensaje.frame.origin.y)
        print(lbMensaje.frame.size.width)
        print(lbMensaje.frame.size.width)
        
        UIView.animate(withDuration: 1) {
            self.lbMensaje.frame.origin.x += 200
        }
        
        
    }


}

