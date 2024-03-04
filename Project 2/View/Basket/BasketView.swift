//
//  BasketView.swift
//  Project 2
//
//  Created by User on 24.02.2024.
//

import UIKit

class BasketView: UIView {
    let uiTableView = UITableView()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = UIColor(red: 231/255,
                                  green: 231/255,
                                  blue: 223/255,
                                  alpha: 1)
        setViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setViews() {
        uiTableView.backgroundColor = .clear
        uiTableView.layer.cornerRadius = 12
        uiTableView.separatorStyle = .none
    }
    
    func setConstraints() {
        addSubview(uiTableView)
        uiTableView.translatesAutoresizingMaskIntoConstraints = false
        uiTableView.register(BasketViewCell.self, forCellReuseIdentifier: BasketViewCell.id)
        
        NSLayoutConstraint.activate([
            uiTableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 26),
            uiTableView.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 8),
            uiTableView.centerXAnchor.constraint(equalTo: centerXAnchor),
            uiTableView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
