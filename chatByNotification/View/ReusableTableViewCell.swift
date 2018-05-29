//
//  ReusableTableViewCell.swift
//  chatByNotification
//
//  Created by Haydee Rodriguez on 5/22/18.
//  Copyright © 2018 Haydee Rodriguez. All rights reserved.
//

import UIKit

class ReusableTableViewCell: UITableViewCell {

    @IBOutlet weak var leftImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configure(with data: Friend) {
        titleLabel.text = data.username
        leftImage.image = #imageLiteral(resourceName: "default-friend")
    }
}
