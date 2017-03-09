//
//  Podcast.swift
//  PodcastChallenge
//
//  Created by Student on 2/23/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import Foundation

class Podcast {

    let name: String
    let cover: String
    var numberOfEpsodes: Int

    init(name: String, cover: String, number: Int = 0) {
        self.name = name
        self.cover = cover
        numberOfEpsodes = number
    }

}
