//
//  DataHandler.swift
//  chatByNotification
//
//  Created by Haydee Rodriguez on 5/23/18.
//  Copyright © 2018 Haydee Rodriguez. All rights reserved.
//

import Foundation
import PromiseKit

struct DataHandler {
    
    static func getList() -> Promise <[Friend]> {
        return DBHandler.getLists().map { data -> [Friend] in
            return ParseHandler.parseUserList(with: data)
        }
    }
    
      
}
