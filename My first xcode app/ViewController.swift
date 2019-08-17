//
//  ViewController.swift
//  My first xcode app
//
//  Created by Hidran Arias on 17/08/2019.
//  Copyright © 2019 Hidran Arias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnHello: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
         print("view did load")
        
    }

    @IBAction func btnDidClicked(_ sender: UIButton) {
        print("button clicked")
        btnHello.setTitle("you clicked me", for: .normal)
    }
    
}

