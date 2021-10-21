//
//  DataService.swift
//  CoderSwag
//
//  Created by Aydogdy on 10/19/21.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devclopes logo Graphic Beanie", price: "$18", imageName: "hat01.png"
        ),
        Product(title: "Devslopes logo hat black", price: "$22", imageName: "hat02.png"),
        Product(title: "devslopes logo hat white", price: "$22", imageName: "hat03.png"),
        Product(title: "devslopes", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
    Product(title: "Devslopes", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Devslopes", price: "$32", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
    Product(title: "Devslopes", price: "$32", imageName: "shirt01.png"),
        Product(title: "Devslopes", price: "$32", imageName: "shirt02.png"),
        Product(title: "Devslopes", price: "$32", imageName: "shirt03.png"),
        Product(title: "Devslopes", price: "$32", imageName: "shirt04.png"),
        Product(title: "Devslopes", price: "$32", imageName: "shirt05.png")
    ]
    
    private let dig = [Product]()
    
    func getCategories() -> [Category]{
        return categories
    }
    
    func getProducts(forcategoryTitle title: String)-> [Product]{
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return gethats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigs()
        default:
             return getShirts()
        }
    }
    
    func gethats() -> [Product] {
        return hats
    }
    func getHoodies() -> [Product] {
        return hoodies
    }
    func getShirts() -> [Product] {
        return shirts
    }
    func getDigs() -> [Product] {
        return dig
    }
}
