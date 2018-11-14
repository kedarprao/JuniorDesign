//
//  SmoothieInformation.swift
//  Smoothies
//
//  Created by Kedar Rao on 11/5/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import Foundation

struct SmoothieInformaton: Codable {
    var recipe_id: Int
    var title: String
    var image: String
    var rating: Float
    var directions: String
    var servings: Int
    var calories: Int
    var fat: Int
    var carbohydrates: Int
    var protein: Int
    var ingredients: String
    
}

struct SmoothieInformationWrapper: Codable {
    var recipe: SmoothieInformaton
}
