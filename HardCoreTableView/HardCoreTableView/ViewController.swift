//
//  ViewController.swift
//  HardCoreTableView
//
//  Created by Student on 3/4/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var movies = [
        ("Drama", ["Tinanic", "Clube de Comprar Dallas"]),
        ("Terror", ["O chamado", "O grito", "Sexta-feira 13"]),
        ("Fantasia", ["Senhor dos Anaies", "Harry Potter e o Prisioneiro de Askaban"]),
        ("Sci-fi", ["Star-trek", "Star wars", "Matrix", "Interestelar"]),
        ("Romance", ["Diários de uma paixão", "Um amor para recordar", "A culpa é das estrelas"])
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

protocol Test {
    func testing() -> Int
}

extension ViewController: Test {
    func testing() -> Int {
        return -1;
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return movies.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies[section].1.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return movies[section].0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCellIdentifier", for: indexPath)

        cell.textLabel?.text = movies[indexPath.section].1[indexPath.row]

        return cell
    }
}
