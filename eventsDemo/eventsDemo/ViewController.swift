//
//  ViewController.swift
//  eventsDemo
//
//  Created by Mac on 11/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var toggleSwitch: UISwitch!
    
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        toggleSwitch.isOn = false
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            self.view.backgroundColor = UIColor.white
        } else {
            self.view.backgroundColor = UIColor.darkGray
        }
        
    }
    

    @IBAction func submitClick(_ sender: UIButton) {
        var name = nameTF.text!
        welcomeLabel.text = "Welcome, \(name)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        nameTF.resignFirstResponder()
        
    }
    
}

