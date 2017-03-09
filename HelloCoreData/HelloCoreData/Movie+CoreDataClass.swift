//
//  Movie+CoreDataClass.swift
//  HelloCoreData
//
//  Created by Student on 3/6/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import Foundation
import CoreData


public class Movie: NSManagedObject {

    convenience init() {
        let context = CoreDataManager.getContext()
        let entity = NSEntityDescription.entity(forEntityName: "Movie", in: context)
        self.init(entity: entity!, insertInto: context)
    }

}
