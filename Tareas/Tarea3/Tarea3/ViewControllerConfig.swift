//
//  ViewControllerConfig.swift
//  Tarea3
//
//  Created by Daniel Riojas on 07/09/21.
//

import UIKit

class ViewControllerConfig: UIViewController {

    @IBOutlet weak var bt1: UIButton!
    @IBOutlet weak var bt2: UIButton!
    @IBOutlet weak var bt3: UIButton!
    @IBOutlet weak var bt4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vistInit = segue.destination as! ViewController
        switch sender as! UIButton {
        case bt1:
            vistInit.color = bt1.backgroundColor
            break
        case bt2:
            vistInit.color = bt2.backgroundColor
            break
        case bt3:
            vistInit.color = bt3.backgroundColor
            break
        case bt4:
            vistInit.color = bt4.backgroundColor
            break
        default:
            break
        }
    }
    

}
