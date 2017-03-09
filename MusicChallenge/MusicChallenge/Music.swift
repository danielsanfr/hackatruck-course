//
//  File.swift
//  MusicChallenge
//
//  Created by Student on 2/24/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import Foundation

class Music {

    let name: String
    let year: Date
    let duration: Int
    let artist: Artist

    init(artist: Artist, name: String) {
        self.year = Date()
        self.name = name
        self.artist = artist
        self.duration = Int(arc4random_uniform(300))
    }

}
