//
//  BasketViewCell.swift
//  Project 2
//
//  Created by User on 01.03.2024.
//

import UIKit

class BasketViewCell: UITableViewCell {
    static let id = "BasketViewCell"
    
    let cardView = UIView()
    let uiImageView = UIImageView()
    let uiLabelName = UILabel()
    let uiLabelPrice = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setViews() {
        self.backgroundColor = .white
        self.layer.cornerRadius = 12
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth = 1
        self.clipsToBounds = true
        
        uiLabelName.textAlignment = .center
        uiLabelName.font = .boldSystemFont(ofSize: 16)
        uiLabelName.numberOfLines = 0
        
        uiLabelPrice.textAlignment = .left
        uiLabelPrice.font = .boldSystemFont(ofSize: 16)
    }
    
    func setConstraints() {
        let stack = UIStackView(view: [uiImageView,
                                      uiLabelName,
                                      uiLabelPrice],
                                axis: .horizontal,
                                spacing: 8)
        cardView.addSubview(stack)
        addSubview(cardView)
        cardView.translatesAutoresizingMaskIntoConstraints = false
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            cardView.topAnchor.constraint(equalTo: topAnchor, constant: 26),
            cardView.leftAnchor.constraint(equalTo: leftAnchor, constant: 8),
            cardView.centerXAnchor.constraint(equalTo: centerXAnchor),
            cardView.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            stack.leftAnchor.constraint(equalTo: cardView.leftAnchor, constant: 12),
            stack.centerXAnchor.constraint(equalTo: centerXAnchor),
            stack.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
