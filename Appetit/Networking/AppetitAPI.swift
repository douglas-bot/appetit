//
//  AppetitAPI.swift
//  Appetit
//
//  Created by Sense Infoway on 28/12/16.
//  Copyright © 2016 Douglas Taquary. All rights reserved.
//

import Foundation
import Moya


enum AppetitAPI {
    case items
    case item(String)
}


extension AppetitAPI: TargetType {
    var baseURL: URL { return URL(string: "https://gist.githubusercontent.com/douglastaquary")! }

    var path: String {
        switch self {
        case .items:
            return "/526a148691d2357f9752203ac6d6fc3f/raw/4664806b6ab376814a951cd98e92a56f0a7d6e42/items.json"
        case .item(let itemId):
            return "/v1/items/\(itemId)"
        }
    }
        
    var method: Moya.Method {
        switch self {
        case .items, .item:
            return .get
        }
    }
        
    var parameters: [String: Any]? {
        
        switch self {
            
        case .item(let itemId):
            return ["itemId": itemId]
        
        default:
            return ["":""]
        }
    }
    
    var validate: Bool {
        switch self {
        default:
            return false
        }
    }
    
    var task: Task {
        return .request
    }
        
    var sampleData: Data {
        switch self {
        default:
            return Data()
        }
    }
}

