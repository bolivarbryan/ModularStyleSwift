//
//  SpendingTableViewCell.swift
//  ModularityDemo
//
//  Created by Bryan A Bolivar M on 3/27/19.
//  Copyright © 2019 BolivarBryan. All rights reserved.
//

import UIKit
import ModularityStyle

class SpendingTableViewCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var subtileLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        styleCardView(containerView)
        styleViewCircleBorder(profileImageView)
        styleLabelName(nameLabel)
        styleLabelSmall(subtileLabel)
        styleLabelBigFont(priceLabel)
        styleViewDropShadow(containerView)
    }

}
