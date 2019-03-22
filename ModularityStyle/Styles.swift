//
//  Styles.swift
//  ModularityDemo
//
//  Created by Bryan A Bolivar M on 3/22/19.
//  Copyright © 2019 BolivarBryan. All rights reserved.
//

import UIKit

// - MARK: Global

public func styleViewBackground(color: UIColor) -> (UIView) -> Void {
    return {
        $0.backgroundColor = color
    }
}

public func styleViewBorder(color: UIColor, width: CGFloat) -> (UIView) -> Void {
    return {
        $0.layer.borderColor = color.cgColor
        $0.layer.borderWidth = width
    }
}

// - MARK: UIView

public let styleViewCircleBase: (UIView) -> Void =
    styleViewBackground(color: .blueSystem)
        <> {
            $0.layer.cornerRadius = $0.frame.width * 0.5
            $0.layer.masksToBounds = true
}

public let styleViewCircleBorder: (UIView) -> Void =
    styleViewCircleBase
        <> styleViewBorder(color: .darkBlueSystem, width: 4)

// - MARK: UILabel

let styleLabelBase: (UILabel) -> Void = {
    $0.textAlignment = .center
    $0.numberOfLines = 0
}

let styleBoldLabelLeftBase: (UILabel) -> Void = {
    $0.textAlignment = .left
}

public let styleLabelParagraph: (UILabel) -> Void =
    styleBoldLabelLeftBase
        <> {
            $0.numberOfLines = 0
}

public let styleLabelBigFont: (UILabel) -> Void = {
    $0.font = UIFont.systemFont(ofSize: FontSize.big.rawValue, weight: .bold)
}

public let styleLabelRegularFont: (UILabel) -> Void = {
    $0.font = UIFont.systemFont(ofSize: FontSize.normal.rawValue, weight: .regular)
}

public let styleLabelCircle: (UILabel) -> Void =
    styleLabelBase
        <> styleViewCircleBorder
        <> styleLabelBigFont

public let styleLabelHeading: (UILabel) -> Void =
    styleBoldLabelLeftBase
        <> styleLabelRegularFont
        <> {
            $0.textColor = .darkGray
}

// - MARK: UIButton

public let styleContactButton: (UIButton) -> Void = {
    $0.setTitle("Contact", for: .normal)
    $0.setTitleColor(.orange, for: .highlighted)
    $0.setTitleColor(.red, for: .normal)
}
