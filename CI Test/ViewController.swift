//
//  ViewController.swift
//  CI Test
//
//  Created by Jonathan Head on 16/06/2017.
//  Copyright © 2017 Appscore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var firstField: UITextField!
    @IBOutlet var secondField: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func addValues() {
        let firstVal = firstField.text!
        let secondVal = secondField.text!
        
        let converter = InputConverter()
        guard let firstInt = converter.convertInt(input: firstVal) else { return }
        guard let secondInt = converter.convertInt(input: secondVal) else { return }
        
        let result = Adder().add(n1: firstInt, n2: secondInt)
        resultLabel.text = "Result: \(result)"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

