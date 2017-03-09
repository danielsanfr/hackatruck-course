//
//  ArtistTableViewCell.swift
//  MusicChallenge
//
//  Created by Student on 2/24/17.
//  Copyright © 2017 Daniel San. All rights reserved.
//

import UIKit

class ArtistTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var musicsCount: UILabel!
    @IBOutlet weak var color: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func bind(artist: Artist) {
        name.text = artist.name
        color.image = UIImage(color: artist.color)
        
        color.layer.cornerRadius = 25
        color.clipsToBounds = true
        
        if artist.musics.count != 1 {
            musicsCount.text = "\(artist.musics.count) musicas"
        } else {
            musicsCount.text = "1 musica"
        }
    }

}

public extension UIImage {
    public convenience init?(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        guard let cgImage = image?.cgImage else { return nil }
        self.init(cgImage: cgImage)
    }
}
