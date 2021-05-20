//
//  ViewController.swift
//  FirstHomeWorkPartTwoTrafficLight
//
//  Created by Igor Makeev on 18.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let alpha: CGFloat = 0.3
    
    @IBOutlet weak var redViewOutlet: UIView!
    @IBOutlet weak var yellowViewOutlet: UIView!
    @IBOutlet weak var greenViewOutlet: UIView!
    @IBOutlet weak var startButtomOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redViewOutlet.layer.cornerRadius = redViewOutlet.frame.width / 2
        redViewOutlet.alpha = alpha
        
        yellowViewOutlet.layer.cornerRadius = yellowViewOutlet.frame.width / 2
        yellowViewOutlet.alpha = alpha
        
        greenViewOutlet.layer.cornerRadius = greenViewOutlet.frame.width / 2
        greenViewOutlet.alpha = alpha
    }
    
    @IBAction func startButtom(_ sender: Any) {
        
        startButtomOutlet.setTitle("Next", for: .normal)
       
        if redViewOutlet.alpha == yellowViewOutlet.alpha {
            redViewOutlet.alpha = CGFloat(1.0)
            greenViewOutlet.alpha = alpha
        }
        else if redViewOutlet.alpha > alpha && yellowViewOutlet.alpha == greenViewOutlet.alpha{
            yellowViewOutlet.alpha = CGFloat(1.0)
            redViewOutlet.alpha = alpha
        }
        else if yellowViewOutlet.alpha > alpha && greenViewOutlet.alpha == redViewOutlet.alpha{
            greenViewOutlet.alpha = CGFloat(1.0)
            yellowViewOutlet.alpha = alpha
        }
    }
}

