//
//  ViewController.swift
//  UnitTestStories
//
//  Created by Kamil Tustanowski on 16.11.2017.
//  Copyright © 2017 Kamil Tustanowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var encryptButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func encrypt(sender: UIButton) {
        guard let text = textField.text else { return }
        
        resultLabel.text = AtbashCipher.encrypt(text)
    }

}

