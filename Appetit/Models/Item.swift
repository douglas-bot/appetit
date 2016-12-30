//
//  Item.swift
//  Appetit
//
//  Created by Sense Infoway on 28/12/16.
//  Copyright © 2016 Douglas Taquary. All rights reserved.
//

import Foundation
import ObjectMapper

struct Item {
    var id: Int = 0
    var name: String = ""
    var price: String = ""
    var isAdd: Bool = false
    var image: String = ""
    //var description: String = ""
}

extension Item: Mappable {
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        isAdd <- map["isAdd"]
        price <- map["price"]
        image <- map["image"]
        //description <- map["description"]
    }
}
