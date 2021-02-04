//
//  EmojiTableViewCell.swift
//  EmojiReader
//
//  Created by Pavel Boltromyuk on 2/4/21.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {

    @IBOutlet weak var smileLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func set(_ object: Emoji){
        self.smileLabel.text = object.emoji
        self.nameLabel.text = object.name
        self.descriptionLabel.text = object.description
    }
}
