//
//  ShowColorViewController.swift
//  ColorStoryboard
//
//  Created by Student on 2/24/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import UIKit

class ShowColorViewController: UIViewController {

    var color: UIColor = UIColor.white

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = color

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
