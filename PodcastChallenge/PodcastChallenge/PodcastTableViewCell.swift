//
//  PodcastTableViewCell.swift
//  PodcastChallenge
//
//  Created by Student on 2/23/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import UIKit

class PodcastTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cover: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var numberOfEpsodes: UILabel!

    func bind(podcast: Podcast) {
        name.text = podcast.name
        cover.image = UIImage(named: podcast.cover)
        numberOfEpsodes.text = "\(podcast.numberOfEpsodes) epsodes"
        if (podcast.numberOfEpsodes <= 0) {
            numberOfEpsodes.textColor = UIColor.red
        } else {
            numberOfEpsodes.textColor = UIColor.blue
        }
    }

}
