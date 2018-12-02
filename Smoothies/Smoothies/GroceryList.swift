//
//  GroceryList.swift
//  Smoothies
//
//  Created by Kedar Rao on 12/1/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import Foundation

struct GroceryList: Codable {
    var cost: [String: Float]
    var total: Float
}
