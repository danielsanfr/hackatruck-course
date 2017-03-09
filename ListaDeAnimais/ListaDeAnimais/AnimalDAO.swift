//
//  AnimalDAO.swift
//  ListaDeAnimais
//
//  Created by Student on 2/23/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import Foundation

class AnimalDAO {

    static func getArray() -> [Animal] {
        return [
            Animal(name: "Bird", specie: "Oviparous", photo: "bird"),
            Animal(name: "Swan", specie: "Oviparous", photo: "swan"),
            Animal(name: "Camel", specie: "Mammal", photo: "camel"),
            Animal(name: "Dog", specie: "Mammal", photo: "dog"),
            Animal(name: "kangaroo", specie: "Mammal", photo: "kangaroo")
        ]
    }

}
