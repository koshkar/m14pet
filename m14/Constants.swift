//
//  Constants.swift
//  m14
//
//  Created by Кирилл Кошкарёв on 18.08.2023.
//

import UIKit

enum Constants {
    
    enum CountriesNames {
        static var firstCountryName: String {
            "Austria"
        }
        static var secondCountryName: String {
            "Belgium"
        }
        static var thirdCountryName: String {
            "France"
        }
        static var fourthCountryName: String {
            "Germany"
        }
        static var fifthCountryName: String {
            "Greece"
        }
    }
    
    static var allCountries: Array = ["Austria", "Belgium", "France", "Germany", "Greece"]
    
    enum CountriesImages {
        static let firstCountryImage = UIImage(named: "Austria")
        static let secondCountryImage = UIImage(named: "Belgium")
        static let thirdCountryImage = UIImage(named: "France")
        static let fourthCountryImage = UIImage(named: "Germany")
        static let fifthCountryImage = UIImage(named: "Greece")
    }
    
    static var allContriesImages: [UIImage] = [
        UIImage(named: "Austria")!,
        UIImage(named: "Belgium")!,
        UIImage(named: "France")!,
        UIImage(named: "Germany")!,
        UIImage(named: "Greece")!
    ]
    
    static var models = Transducer.models
    static var newModels = Transducer.newModels
    
}
