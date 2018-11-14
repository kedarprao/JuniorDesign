//
//  Smoothie.swift
//  Smoothies
//
//  Created by Kedar Rao on 11/5/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import Foundation


struct Smoothie: Codable {
    var title: String
    var recipe_id: Int

//    init (recipe_id: Int, smoothieName: String, smoothieID: Int) {
//        //self.smoothieName = smoothieName
//        self.recipe_id = recipe_id
//    }
}

struct SmoothieWrapper: Codable {
    var recipes: [Smoothie]
}
