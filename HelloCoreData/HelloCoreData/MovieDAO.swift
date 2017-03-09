//
//  MovieDAO.swift
//  HelloCoreData
//
//  Created by Student on 3/6/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import Foundation
import CoreData

class MovieDAO {

    static func insert(_ movie: Movie)  -> Bool {
        return CoreDataManager.insert(movie)
    }

    static func search() -> [Movie] {
        var result = [Movie]()
        let request: NSFetchRequest<Movie> = Movie.fetchRequest()
        request.sortDescriptors = [
            NSSortDescriptor.init(key: "year", ascending: true)
        ]
        do {
            try result = CoreDataManager.getContext().fetch(request)
            print(result.count)
        } catch let error {
            print("Erro ao buscar Filmes \(error)")
        }
        return result
    }

}
