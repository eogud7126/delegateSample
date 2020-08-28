//
//  ViewController.swift
//  delegateSample
//
//  Created by USER on 28/08/2020.
//  Copyright © 2020 USER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var textField: UITextField!
    @IBOutlet var enteredLabel: UILabel!
    @IBAction func buttonClicked(_ sender: Any) {
        textFieldShouldReturn(textField)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        // Do any additional setup after loading the view.
    }


    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        enteredLabel.text = textField.text
        return true
    }
}

