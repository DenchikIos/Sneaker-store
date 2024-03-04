//
//  ShopViewController.swift
//  Project 2
//
//  Created by User on 24.02.2024.
//

import UIKit

var screen = UIScreen.main.bounds

class ShopViewController: UIViewController {
    let shopView = ShopView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view = shopView
        shopView.collectionView.dataSource = self
        shopView.collectionView.delegate = self
    }
}

extension ShopViewController: UICollectionViewDataSource {
    //количество ячеик
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        SneakersList.allCases.count
    }
    //ячейка по индексу
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionContainerViewCell.id, for: indexPath) as! CollectionContainerViewCell
        cell.uiImage.image = getSneakersListImage(list: SneakersList.allCases[indexPath.item])
        cell.uiLabel.text = SneakersList.allCases[indexPath.item].rawValue
        cell.uiLabelSize.text = SizeModel.allCases[indexPath.item].rawValue
        cell.uiLabelPrice.text = PriceModei.allCases[indexPath.item].rawValue
        return cell
    }
    
    func getSneakersListImage(list: SneakersList) -> UIImage {
        switch list {
        case .nikeAirForce: return UIImage(named: "11")!
        case .reebokClassicLeather: return UIImage(named: "22")!
        case .newBalance: return UIImage(named: "33")!
        case .reebokClassicWorkout: return UIImage(named: "44")!
        case .chuckTaylorAllStar: return UIImage(named: "55")!
        case .vansOldSkool: return UIImage(named: "66")!
        case .vejaV10: return UIImage(named: "77")!
        case .superga: return UIImage(named: "88")!
        case .goldenGooseSuperstar: return UIImage(named: "99")!
        case .diadoraGame: return UIImage(named: "100")!
        }
    }
}

extension ShopViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: screen.width / 2 - 30, height: screen.height / 3 - 30)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
}

extension ShopViewController: UICollectionViewDelegate {
    
}

