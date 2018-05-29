//
//  File.swift
//  chatByNotification
//
//  Created by Haydee Rodriguez on 5/22/18.
//  Copyright © 2018 Haydee Rodriguez. All rights reserved.
//

import Foundation
import ObjectMapper

struct Friend: Mappable {
    var username: String

    init?(map: Map) {
        username = ""
    }
    
    mutating func mapping(map: Map) {
        username <- map["username"]
    }
}
