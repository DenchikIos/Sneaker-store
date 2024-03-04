//
//  MainTabBarController.swift
//  Project 2
//
//  Created by User on 24.02.2024.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        generationTabBar()
        setTabBarAppearance()
    }
    
    
    private func generationTabBar() {
        viewControllers = [
            generateVC(viewController: RegistrationViewController(),
                       titel: "Registration",
                       image: UIImage(systemName: "person")),
            generateVC(viewController: ShopViewController(),
                       titel: "Shop",
                       image: UIImage(systemName: "bag.badge.plus")),
            generateVC(viewController: BasketViewController(),
                       titel: "Basket",
                       image: UIImage(systemName: "cart"))
        ]
    }
    
    private func generateVC(viewController: UIViewController, titel: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = titel
        viewController.tabBarItem.image = image
        return viewController
    }

    private func setTabBarAppearance() {
        tabBar.backgroundImage = UIImage()
        tabBar.backgroundColor = .clear
        tabBar.shadowImage = UIImage()
        
        //Кастомная реализация

//        let positionX: CGFloat = 10
//        let positionY: CGFloat = 10
//        let width = tabBar.bounds.width - positionX * 2
//        let height = tabBar.bounds.height + positionY * 2
//
//        let roundLayer = CAShapeLayer()
//
//        let bezierPath = UIBezierPath(roundedRect: CGRect(x: positionX,
//                                                          y: tabBar.bounds.minY - positionY,
//                                                          width: width,
//                                                          height: height),
//                                      cornerRadius: height / 2)
//        roundLayer.path = bezierPath.cgPath

    //    tabBar.layer.insertSublayer(roundLayer, at: 0)
    //    tabBar.itemWidth = width / 5
//        tabBar.itemPositioning = .centered
//        tabBar.backgroundColor = .clear

    //    roundLayer.fillColor = UIColor(red: 173/255, green: 186/255, blue: 178/255, alpha: 1).cgColor
    //    tabBar.tintColor = UIColor(red: 231/255, green: 231/255, blue: 223/255, alpha: 1)
    }
}
