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

public func styleViewWithCorner(_ corner: CGFloat) -> (UIView) -> Void  {
    return {
        $0.layer.cornerRadius = corner
        $0.clipsToBounds = true
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

public let styleViewDropShadow: (UIView) -> Void =
    {
            $0.layer.masksToBounds = false
            $0.layer.shadowOffset = CGSize(width: 0, height: 2)
            $0.layer.shadowRadius = 4
            $0.layer.shadowOpacity = 0.3
}

public let styleCardView: (UIView) -> Void =
        styleViewWithCorner(4)
        <> styleViewDropShadow

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

public let styleLabelSmallFont: (UILabel) -> Void = {
    $0.font = UIFont.systemFont(ofSize: FontSize.small.rawValue, weight: .regular)
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

public let styleLabelSubtitle: (UILabel) -> Void =
    styleBoldLabelLeftBase
        <> styleLabelRegularFont
        <> {
            $0.textColor = .darkGray
}

public let styleLabelName: (UILabel) -> Void =
    styleBoldLabelLeftBase
        <> styleLabelBigFont
        <> {
            $0.textColor = .darkGray
}

public let styleLabelSmall: (UILabel) -> Void =
    styleBoldLabelLeftBase
        <> styleLabelSmallFont
        <> {
            $0.textColor = .darkGray
}

// - MARK: UIButton

public let styleContactButton: (UIButton) -> Void = {
    $0.setTitle("Contact", for: .normal)
    $0.setTitleColor(.orange, for: .highlighted)
    $0.setTitleColor(.red, for: .normal)
}
