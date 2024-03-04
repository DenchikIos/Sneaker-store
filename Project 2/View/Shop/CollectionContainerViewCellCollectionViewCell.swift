//
//  CollectionContainerViewCellCollectionViewCell.swift
//  Project 2
//
//  Created by User on 25.02.2024.
//

import UIKit

class CollectionContainerViewCell: UICollectionViewCell {
    static let id = "CollectionContainerViewCell"
    
    let uiLabel = UILabel()
    let uiLabelSize = UILabel()
    let uiLabelPrice = UILabel()
    let uiImage = UIImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        self.backgroundColor = .white
        self.layer.cornerRadius = 12
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth = 1
        self.clipsToBounds = true
        
        uiLabel.textAlignment = .center
        uiLabel.font = .boldSystemFont(ofSize: 16)
        uiLabel.numberOfLines = 0
        
        uiLabelSize.textAlignment = .right
        uiLabelSize.font = .boldSystemFont(ofSize: 16)
        
        uiLabelPrice.textAlignment = .left
        uiLabelPrice.font = .boldSystemFont(ofSize: 16)
        
  //    uiImage.contentMode = .scaleAspectFit
    }
    
    func setupConstraints() {
        addSubview(uiImage)
        uiImage.translatesAutoresizingMaskIntoConstraints = false
        addSubview(uiLabel)
        uiLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(uiLabelSize)
        uiLabelSize.translatesAutoresizingMaskIntoConstraints = false
        addSubview(uiLabelPrice)
        uiLabelPrice.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            uiImage.topAnchor.constraint(equalTo: topAnchor),
            uiImage.leftAnchor.constraint(equalTo: leftAnchor),
            uiImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            uiImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            uiLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            uiLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 8),
            uiLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            uiLabelSize.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
            uiLabelSize.rightAnchor.constraint(equalTo: rightAnchor, constant: -8),
            uiLabelSize.leftAnchor.constraint(equalTo: centerXAnchor),
            
            uiLabelPrice.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -44),
            uiLabelPrice.leftAnchor.constraint(equalTo: leftAnchor, constant: 8),
            uiLabelPrice.rightAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
}






