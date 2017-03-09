//
//  Artist.swift
//  MusicChallenge
//
//  Created by Student on 2/24/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import Foundation
import UIKit

class Artist {

    static let colors = [
        UIColor.black,
        UIColor.darkGray,
        UIColor.lightGray,
        UIColor.gray,
        UIColor.red,
        UIColor.green,
        UIColor.blue,
        UIColor.cyan,
        UIColor.yellow,
        UIColor.magenta,
        UIColor.orange,
        UIColor.brown,
        UIColor.purple
    ]

    let name: String
    let color: UIColor
    // TODO: Check why this should be var
    var musics: [Music]

    init() {
        name = randomString(length: 40)
        musics = [Music]()
        color = Artist.colors[Int(arc4random_uniform(UInt32(Artist.colors.count)))]
        generateMusics()
    }

    private func generateMusics() {
        let count = arc4random_uniform(20) + 1
        for _ in 1 ... count {
            musics.append(Music(artist: self, name: randomString(length: 25)))
        }
    }

}

func randomString(length: Int) -> String {
    let letters : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    let len = UInt32(letters.length)
    
    var randomString = ""
    
    for _ in 0 ..< length {
        let rand = arc4random_uniform(len)
        var nextChar = letters.character(at: Int(rand))
        randomString += NSString(characters: &nextChar, length: 1) as String
    }
    
    return randomString
}
