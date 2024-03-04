//
//  Purchase.swift
//  Project 2
//
//  Created by User on 01.03.2024.
//

import Foundation

struct Purchase: Identifiable {
    
    let id: String = UUID().uuidString
    var size: SizeModel
    var price: PriceModei
    var model: SneakersList
    
    static var mockData: [Purchase] = [
        .init(size: .nikeAirForce, price: .nikeAirForce, model: .nikeAirForce),
        .init(size: .reebokClassicLeather, price: .reebokClassicLeather, model: .reebokClassicLeather),
        .init(size: .newBalance, price: .newBalance, model: .newBalance),
        .init(size: .reebokClassicWorkout, price: .reebokClassicWorkout, model: .reebokClassicWorkout),
        .init(size: .chuckTaylorAllStar, price: .chuckTaylorAllStar, model: .chuckTaylorAllStar),
        .init(size: .vansOldSkool, price: .vansOldSkool, model: .vansOldSkool),
        .init(size: .vejaV10, price: .vejaV10, model: .vejaV10),
        .init(size: .superga, price: .superga, model: .superga),
        .init(size: .goldenGooseSuperstar, price: .goldenGooseSuperstar, model: .goldenGooseSuperstar),
        .init(size: .diadoraGame, price: .diadoraGame, model: .diadoraGame)
    ]
}
