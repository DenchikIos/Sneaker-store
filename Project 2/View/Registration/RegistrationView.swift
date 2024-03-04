//
//  RegistrationView.swift
//  Project 2
//
//  Created by User on 21.02.2024.
//

import UIKit

class RegistrationView: UIView {
    let cardView = UIView()
    let labelRegistration = UILabel()
    let textLoginRegestration = UITextField(place: "Your login")
    let textPasswordRegestration = UITextField(place: "Your password")
    let buttonRegestration = UIButton(setTitle: "Further", titleLable: 20)
    let buttonLoginPassword = UIButton()
    let imageRegestration = UIImageView()
    
    init(){
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
    
    private func setViews() {
        labelRegistration.text = "Registration"
        labelRegistration.font = .boldSystemFont(ofSize: 30)
        labelRegistration.textAlignment = .center
        
        cardView.backgroundColor = .white
        cardView.layer.cornerRadius = 12
    
        buttonLoginPassword.setTitle("I already have an account", for: .normal)
        buttonLoginPassword.setTitleColor(.black, for: .normal)
        buttonLoginPassword.titleLabel?.font = UIFont.systemFont(ofSize: 24, weight: .regular)
        
        imageRegestration.image = UIImage(named: "logo")
    }
    
    private func setConstraints() {
        let stackTF = UIStackView(view: [textLoginRegestration,
                                        textPasswordRegestration],
                                 axis: .vertical,
                                 spacing: 10)
        let stack = UIStackView(view: [labelRegistration,
                                      stackTF,
                                      buttonRegestration],
                                axis: .vertical,
                                spacing: 28)
        stack.translatesAutoresizingMaskIntoConstraints = false
        cardView.addSubview(stack)
        cardView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(cardView)
        imageRegestration.translatesAutoresizingMaskIntoConstraints = false
        addSubview(imageRegestration)
        buttonLoginPassword.translatesAutoresizingMaskIntoConstraints = false
        addSubview(buttonLoginPassword)
        
        NSLayoutConstraint.activate([
            cardView.centerXAnchor.constraint(equalTo: centerXAnchor),
            cardView.centerYAnchor.constraint(equalTo: centerYAnchor),
            cardView.leftAnchor.constraint(equalTo: leftAnchor, constant: 30),
            cardView.heightAnchor.constraint(equalToConstant: 260),
            
            stack.centerXAnchor.constraint(equalTo: cardView.centerXAnchor),
            stack.centerYAnchor.constraint(equalTo: cardView.centerYAnchor),
            stack.leftAnchor.constraint(equalTo: cardView.leftAnchor, constant: 20),
            
            buttonRegestration.heightAnchor.constraint(equalToConstant: 40),
            
            buttonLoginPassword.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonLoginPassword.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -34),
            
            imageRegestration.heightAnchor.constraint(equalToConstant: 150),
            imageRegestration.widthAnchor.constraint(equalToConstant: 150),
            imageRegestration.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageRegestration.bottomAnchor.constraint(equalTo: cardView.topAnchor, constant: -54)
        ])
    }
}

