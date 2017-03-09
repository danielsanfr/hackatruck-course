//
//  Movie+CoreDataProperties.swift
//  HelloCoreData
//
//  Created by Student on 3/6/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import Foundation
import CoreData


extension Movie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movie> {
        return NSFetchRequest<Movie>(entityName: "Movie");
    }

    @NSManaged public var name: String?
    @NSManaged public var year: Int16
    @NSManaged public var studio: Studio?

}
