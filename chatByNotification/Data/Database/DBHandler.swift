//
//  DBHandler.swift
//  chatByNotification
//
//  Created by Haydee Rodriguez on 5/23/18.
//  Copyright © 2018 Haydee Rodriguez. All rights reserved.
//

import Foundation
import FirebaseDatabase
import PromiseKit

struct DBHandler {
    
    static let userListRef = Database.database().reference(withPath: FirebasePath.users.rawValue)
    
    /// Connection handler to get user list
    ///
    /// - Parameters:
    ///  None
    /// - Returns: a **Promise** which returns a Dictionary from database
    static func getLists() -> Promise <[[String: Any]]> {
        return Promise { resolve in
            userListRef.observe(.value, with: { snapshot in
                let data = snapshot.value as? [String: Any] ?? [:]
                var userlistDictArray: [[String: Any]] = []
                for snData in data {
                    if let usersListData = snData.value as? [String: Any] {
                        userlistDictArray.append(usersListData)
                    }
                }
                resolve.fulfill(userlistDictArray)
            })
        }
    }
    
}
