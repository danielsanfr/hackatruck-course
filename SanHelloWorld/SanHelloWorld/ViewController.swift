/*
 * ViewController.swift
 * SanHelloWorld
 *
 * Created by Student on 2/22/17.
 * Copyright © 2017 Daniel San. All rights reserved.
 */

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfFirstName: UITextField!
    @IBOutlet weak var tfMiddleName: UITextField!
    @IBOutlet weak var tfLastName: UITextField!
    @IBOutlet weak var lbFullName: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sayTheUserName() {
        lbFullName.text = "\(tfFirstName.text!) \(tfMiddleName.text!) \(tfLastName.text!)"
        tfFirstName.text = ""
        tfMiddleName.text = ""
        tfLastName.text = ""
    }

}
