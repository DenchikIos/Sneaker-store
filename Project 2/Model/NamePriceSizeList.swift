
import UIKit

enum SneakersList: String, CaseIterable {
    case nikeAirForce = "Nike Air Force 1"
    case reebokClassicLeather = "Reebok Classic Leather"
    case newBalance = "New Balance 574"
    case reebokClassicWorkout = "Reebok Classic Workout"
    case chuckTaylorAllStar = "Chuck Taylor All-Star"
    case vansOldSkool = "Vans Old Skool"
    case vejaV10 = "Veja V10"
    case superga = "Superga 2750"
    case goldenGooseSuperstar = "Golden Goose Superstar"
    case diadoraGame = "Diadora Game"
}

enum SizeModel: String, CaseIterable {
    case nikeAirForce = "39, 40, 41"
    case reebokClassicLeather = "40, 41"
    case newBalance = "39, 40, 41, 42"
    case reebokClassicWorkout = "39, 40, 41, 42, 43"
    case chuckTaylorAllStar = "39, 41, 42"
    case vansOldSkool = "40"
    case vejaV10 = "41"
    case superga = "39, 40, 41, 42, 43, 44"
    case goldenGooseSuperstar = "39, 40"
    case diadoraGame = "38, 39, 40, 41"
}

enum PriceModei: String, CaseIterable {
    case nikeAirForce = "200$"
    case reebokClassicLeather = "300$"
    case newBalance = "500$"
    case reebokClassicWorkout = "400$"
    case chuckTaylorAllStar = "150$"
    case vansOldSkool = "230$"
    case vejaV10 = "410$"
    case superga = "320$"
    case goldenGooseSuperstar = "210$"
    case diadoraGame = "220$"
}
