//
//  UITableViewCell+ReusableId.swift
//  chatByNotification
//
//  Created by Haydee Rodriguez on 5/23/18.
//  Copyright © 2018 Haydee Rodriguez. All rights reserved.
//

import UIKit

extension UITableViewCell {
    static var reusableId: String {
        return String(describing: self)
    }
}
