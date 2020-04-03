//
//  Restaurant.swift
//  FoodPie
//
//  Created by ciggo on 4/3/20.
//  Copyright © 2020 ciggo. All rights reserved.
//

import Foundation

class Restaurant {

    var name: String;
    var location: String;
    var type: String;
    var image: String;

    init(name: String, location: String, type: String, image: String) {
        self.name = name
        self.location = location
        self.type = type
        self.image = image
    }

    convenience init() {
        self.init(name: "", location: "", type: "", image: "")
    }
}
