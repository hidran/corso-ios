//
//  ViewController.swift
//  Calcolo area e perimetro
//
//  Created by Hidran Arias on 16/05/2020.
//  Copyright © 2020 Hidran Arias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var widthField: UITextField!
    
    @IBOutlet weak var heightField: UITextField!
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
     
        super.viewDidLoad()
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    @IBAction func calcArea(_ sender: UIButton) {
      
        calc2(what: "area")
      
       //
    }
    
    
    @IBAction func calcPerimeter(_ sender: UIButton) {
        calc(what: "perimetro")
    }
    
    @IBAction func clear(_ sender: UIButton) {
        widthField?.text = ""
        heightField?.text = ""
        result?.text = "0"
    }
    func calc(what:String) {
           if let w =  NumberFormatter().number(from: widthField.text!)  as? Double {
                      
                      if let h = NumberFormatter().number(from:heightField.text!) as? Double {
                           
                        let resultOp = what == "area" ? w*h : (w+h)*2
                          
                          result.text = String.localizedStringWithFormat("%1.2f", resultOp)
                          
                      } else {
                         result?.text = "Wrong height value"
                      }
                      
                  } else {
                      result?.text = "Wrong width value"
                  }
                  
    }
    
     func calc2(what:String) {
              let w =  NumberFormatter().number(from: widthField.text ?? "0")  as? Double
                         
             let h = NumberFormatter().number(from:heightField.text ?? "0") as? Double
        if w != nil && h != nil {
             let resultOp = what == "area" ? w!*h! : (w!+h!)*2
                             
             result.text = String.localizedStringWithFormat("%1.2f", resultOp)
        } else {
              result.text = "wrong values"
        }
                                                
                     
       }
   
}

