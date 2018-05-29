//
//  ParseHandler.swift
//  chatByNotification
//
//  Created by Haydee Rodriguez on 5/25/18.
//  Copyright © 2018 Haydee Rodriguez. All rights reserved.
//

import Foundation
import ObjectMapper

struct  ParseHandler {
    
    static func parseUserList(with data: [[String: Any]]) -> [Friend] {
        var list = [Friend]()
        list = Mapper<Friend>().mapArray(JSONArray: data)
        return list
    }
}
