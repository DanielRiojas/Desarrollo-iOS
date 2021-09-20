//
//  ViewController.swift
//  reto1
//
//  Created by Daniel Riojas on 08/09/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lbTurn: UILabel!
    @IBOutlet var matrix : [UIButton]!
    @IBOutlet weak var btRestart: UIButton!
    
    var turn : Int = 1
    var spots : Int = 9
    let xImg = UIImage(named: "tacha")!
    let oImg = UIImage(named: "circulo")!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btRestart.layer.cornerRadius = 10
        print(matrix?.count ?? 0)
    }
    
    func isWin() -> Bool {
        if(matrix[0].tag == matrix[1].tag && matrix[0].tag == matrix[2].tag){
            return true
        }
        if(matrix[3].tag == matrix[4].tag && matrix[3].tag == matrix[5].tag){
            return true
        }
        if(matrix[6].tag == matrix[7].tag && matrix[6].tag == matrix[8].tag){
            return true
        }
        if(matrix[0].tag == matrix[3].tag && matrix[0].tag == matrix[6].tag){
            return true
        }
        if(matrix[1].tag == matrix[4].tag && matrix[1].tag == matrix[7].tag){
            return true
        }
        if(matrix[2].tag == matrix[5].tag && matrix[2].tag == matrix[8].tag){
            return true
        }
        if(matrix[0].tag == matrix[4].tag && matrix[0].tag == matrix[8].tag){
            return true
        }
        if(matrix[2].tag == matrix[4].tag && matrix[2].tag == matrix[6].tag){
            return true
        }
        return false
    }
    
    func alertWin(player : String) {
        let alert = UIAlertController(title: "Felicidades!!", message: "Ha ganado el jugador: " + player, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    func alertDraw() {
        let alert = UIAlertController(title: "Empate", message: "Ningun jugador ha enlazado 3", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    
    
    @IBAction func clickButton(sender: UIButton){
        if(turn == 1){
            sender.isEnabled = false
            sender.setImage(xImg, for: .normal)
            sender.tag = 1
            spots -= 1
            if(isWin()){
                alertWin(player: "X")
            }
            if(spots == 0){
                alertDraw()
            }
            turn = 2
            lbTurn.text = "Es el turno de: O"
        }
        else {
            sender.isEnabled = false
            sender.setImage(oImg, for: .normal)
            sender.tag = 2
            spots -= 1
            if(isWin()){
                alertWin(player: "O")
            }
            if(spots == 0){
                alertDraw()
            }
            turn = 1
            lbTurn.text = "Es el turno de: X"
        }
    }
    
    @IBAction func restart(sender: UIButton){
        lbTurn.text = "Es el turno de: X"
        spots = 9
        turn = 1
        var index : Int = 10
        
        matrix.forEach({
            $0.setImage(nil, for: .normal)
            $0.tag = index
            $0.isEnabled = true
            index += 1
        })
        
        print("Restart")
    }

}

