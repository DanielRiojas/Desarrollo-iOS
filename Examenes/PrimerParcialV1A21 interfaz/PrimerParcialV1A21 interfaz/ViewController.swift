//
//  ViewController.swift
//  PrimerParcialV1A21 interfaz
//
//  Created by Yolanda Martínez Treviño on 08/09/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var ivBox: UIImageView!
    @IBOutlet weak var scBox: UISegmentedControl!
    @IBOutlet weak var ivEsf: UIImageView!
    @IBOutlet weak var vMorada: UIView!
    
    var img1 = UIImage(named: "checkBoxChecked")
    var img2 = UIImage(named: "checkBoxUnchecked")
    var img3 = UIImage(named: "")
    var opt : Int = 1
    
    @IBOutlet weak var tfa: UITextField!
    @IBOutlet weak var tfb: UITextField!
    @IBOutlet weak var btGo: UIButton!
    @IBOutlet weak var lbR: UILabel!
    
    var result : Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tap = UITapGestureRecognizer(target: self, action: #selector(changeSize))
        view.addGestureRecognizer(tap)
    }

    @IBAction func changeBox() {
        UIView.animate(withDuration: 1) {
            if self.scBox.selectedSegmentIndex == 0 {
                self.ivBox.image = self.img1
                    
            }
            else if self.scBox.selectedSegmentIndex == 1 {
                self.ivBox.image = self.img2
            }
            else {
                self.ivBox.image = self.img3
            }
        }
    }
    
    
    @IBAction func changeSize(){
        if(opt == 1){
            opt = 2
            //Change size
        }
        else{
            opt = 1
            //Change size
        }
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue){
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination as! ViewController2
    }
}

