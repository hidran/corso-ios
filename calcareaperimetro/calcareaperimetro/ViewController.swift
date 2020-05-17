
//
//  ViewController.swift
//  calcareaperimetro
//
//  Created by Hidran Arias on 06/05/2020.
//  Copyright © 2020 Hidran Arias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var widthField: UITextField!
    @IBOutlet weak var heightField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    @IBAction func calcArea(_ sender: Any) {
        
        if let w = NumberFormatter().number(from: widthField.text ?? "0")  {
            print(type(of: w))
            if let h = NumberFormatter().number(from: heightField.text ?? "0") {
                resultLabel.text = String(Double(truncating: w) * Double(truncating: h)) ;
            }
            
        }
        
    
    }
    @IBAction func calcPerimetro(_ sender: Any) {
    }
    @IBAction func clean(_ sender: Any) {
    }
}

