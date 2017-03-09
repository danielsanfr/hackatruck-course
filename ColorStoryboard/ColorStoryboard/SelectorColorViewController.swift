//
//  SelectorViewController.swift
//  ColorStoryboard
//
//  Created by Student on 2/24/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import Foundation
import UIKit

class SelectorColorViewController: UIViewController {

    @IBOutlet weak var color: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showColorIdentifier" {
            if let showColorViewController = segue.destination as? ShowColorViewController {
                if let hexColor = color.text {
                    showColorViewController.color = UIColor(hexString: hexColor)
                }
            }
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}

extension UIColor {
    convenience init(hexString: String, alpha: CGFloat? = 1.0) {
        // Convert hex string to an integer
        var hexInt: UInt32 = 0
        // Create scanner
        let scanner: Scanner = Scanner(string: hexString)
        // Tell scanner to skip the # character
        scanner.charactersToBeSkipped = CharacterSet(charactersIn: "#")
        // Scan hex value
        scanner.scanHexInt32(&hexInt)
        let red = CGFloat((hexInt & 0xff0000) >> 16) / 255.0
        let green = CGFloat((hexInt & 0xff00) >> 8) / 255.0
        let blue = CGFloat((hexInt & 0xff) >> 0) / 255.0
        let alpha = alpha!
        // Create color object, specifying alpha as well
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}
