//
//  buttonExetention.swift
//  Project 2
//
//  Created by User on 28.02.2024.
//

import UIKit

extension UIButton {
    convenience init (setTitle: String, titleLable: Int) {
        self.init(frame: .zero)
        self.setTitle(setTitle, for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: CGFloat(titleLable), weight: .regular)
        self.layer.cornerRadius = 12
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth = 1
        self.backgroundColor = UIColor(red: 173/255, green: 186/255, blue: 178/255, alpha: 1)
        self.setTitleColor(.white, for: .normal)
    }
}
