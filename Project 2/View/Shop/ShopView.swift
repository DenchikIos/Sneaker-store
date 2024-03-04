//
//  ShopView.swift
//  Project 2
//
//  Created by User on 24.02.2024.
//

import UIKit

class ShopView: UIView {
    var collectionView: UICollectionView!
    
    init() {
        super.init(frame: .zero)
        backgroundColor = UIColor(red: 231/255,
                                  green: 231/255,
                                  blue: 223/255,
                                  alpha: 1)
        setConstraints()
        setViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConstraints() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        self.collectionView = UICollectionView(frame: .zero,
                                               collectionViewLayout: layout)
        addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsVerticalScrollIndicator = false
        collectionView.register(CollectionContainerViewCell.self, forCellWithReuseIdentifier: CollectionContainerViewCell.id)
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 26),
            collectionView.leftAnchor.constraint(equalTo: leftAnchor, constant: 8),
            collectionView.centerXAnchor.constraint(equalTo: centerXAnchor),
            collectionView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    private func setViews() {
        self.collectionView.backgroundColor = UIColor(red: 233/255, green: 225/255, blue: 199/255, alpha: 1)
        collectionView.layer.cornerRadius = 12
        collectionView.layer.borderColor = UIColor.lightGray.cgColor
        collectionView.layer.borderWidth = 1
    }
}

