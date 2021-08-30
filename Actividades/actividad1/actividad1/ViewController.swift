//
//  ViewController.swift
//  actividad1
//
//  Created by Daniel Riojas on 25/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgHalo: UIImageView!
    @IBOutlet weak var vCortina: UIView!
    @IBOutlet weak var sCorredor: UISlider!
    @IBOutlet weak var scBackground: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        move(sCorredor)
        changeColor()
    }
    
    @IBAction func move(_ sender : UISlider) {
        vCortina.frame.origin.x = CGFloat(sender.value)+16//*vCortina.frame.size.width
        print(vCortina.frame.origin.x)
    }
    
    @IBAction func changeColor() {
        UIView.animate(withDuration: 1) {
            if self.scBackground.selectedSegmentIndex == 0 {
                self.view.backgroundColor = .white
                
            }
            else {
                self.view.backgroundColor = .gray
                
            }
        }
    }
    
        
    
}

