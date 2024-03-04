//
//  textFildExetention.swift
//  Project 2
//
//  Created by User on 22.02.2024.
//

import UIKit

extension UITextField {
    convenience init(place: String) {
        self.init(frame: .zero)
        self.placeholder = place
        self.backgroundColor = UIColor(red: 233/255, green: 225/255, blue: 199/255, alpha: 1)
        self.layer.cornerRadius = 16
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth = 1
        self.leftView = UIView(frame: .init(x: 0, y: 0, width: 12, height: 0))
        self.leftViewMode = .always
        self.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
}
