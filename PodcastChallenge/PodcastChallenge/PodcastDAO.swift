//
//  PodcastDAO.swift
//  PodcastChallenge
//
//  Created by Student on 2/23/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import Foundation

class PodcastDAO {

    static func getPodcastArray() -> [Podcast] {
        return [
            Podcast(name: "99Vidas", cover: "99vidas", number: 3),
            Podcast(name: "Canal42tv", cover: "canal42"),
            Podcast(name: "MacMagazine no Ar", cover: "mm"),
            Podcast(name: "Não Ouvo", cover: "naoouvo"),
            Podcast(name: "NerdCast", cover: "nerdcast", number: 2),
            Podcast(name: "O Melhor Podcast do Brasil", cover: "ompdb"),
            Podcast(name: "Rapadura Cast", cover: "rapaduracast"),
            Podcast(name: "#Reloading", cover: "reloading", number: 5),
            Podcast(name: "SCICast", cover: "scicast")
        ]
    }

}
