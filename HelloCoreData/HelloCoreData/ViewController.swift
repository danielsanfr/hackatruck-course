//
//  ViewController.swift
//  HelloCoreData
//
//  Created by Student on 3/6/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var year: UITextField!
    private var yearInt: Int16 {
        if let text = year.text {
            if let int = Int16(text) {
                return int
            }
        }
        return 0
    }

    @IBAction func addMovie() {
        let movie = Movie()
        if !isEmpty(text: name.text) && !isEmpty(text: year.text) {
            movie.name = name.text
            movie.year = yearInt
            if !MovieDAO.insert(movie) {
                // Show a error alert
            }
        } else {
            let alert: UIAlertController = UIAlertController(title: "Error",
                                                             message: "Falta preencher algum campo",
                                                             preferredStyle: .alert)
            present(alert, animated: true, completion: {
                print("Alerta completo!")
            })
            let action: UIAlertAction = UIAlertAction(title: "OK", style: .default) { (action) in
                print("O usuário escolheu: \(action.title)")
            }
            alert.addAction(action)
        }
    }

    private func isEmpty(text: String?) -> Bool {
        if let t = text {
            return t.isEmpty
        } else {
            return true
        }
    }

}
