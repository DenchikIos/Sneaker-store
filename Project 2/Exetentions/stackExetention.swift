//
//  stackExetention.swift
//  Project 2
//
//  Created by User on 22.02.2024.
//

import UIKit

extension UIStackView {
    convenience init(view: [UIView],
                     alignment: Alignment = .fill,
                     axis: NSLayoutConstraint.Axis,
                     spacing: CGFloat) {
        self.init(arrangedSubviews: view)
        self.alignment = alignment
        self.axis = axis
        self.spacing = spacing
    }
}
