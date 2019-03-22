//
//  ContactTableViewCell.swift
//  ModularityDemo
//
//  Created by Bryan A Bolivar M on 3/22/19.
//  Copyright © 2019 BolivarBryan. All rights reserved.
//

import ModularityStyle

class ContactTableViewCell: UITableViewCell {

    var data: String? = nil {
        didSet {
            guard
                let data = data
                else { return }
            nameLabel.text = data
            profileBadge.text = String(data.first!)
        }
    }

    @IBOutlet weak var profileBadge: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var contactButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        styleLabelCircle(profileBadge)
        styleLabelHeading(nameLabel)
        styleContactButton(contactButton)
    }
}
