//
//  Studio+CoreDataProperties.swift
//  HelloCoreData
//
//  Created by Student on 3/6/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import Foundation
import CoreData


extension Studio {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Studio> {
        return NSFetchRequest<Studio>(entityName: "Studio");
    }

    @NSManaged public var name: String?
    @NSManaged public var movies: NSSet?

}

// MARK: Generated accessors for movies
extension Studio {

    @objc(addMoviesObject:)
    @NSManaged public func addToMovies(_ value: Movie)

    @objc(removeMoviesObject:)
    @NSManaged public func removeFromMovies(_ value: Movie)

    @objc(addMovies:)
    @NSManaged public func addToMovies(_ values: NSSet)

    @objc(removeMovies:)
    @NSManaged public func removeFromMovies(_ values: NSSet)

}
