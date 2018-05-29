//
//  LoginViewController.swift
//  chatByNotification
//
//  Created by Haydee Rodriguez on 5/23/18.
//  Copyright © 2018 Haydee Rodriguez. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var nameLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func loginAction(_ sender: UIButton) {
       performSegue(withIdentifier: SegueIdentifier.userList.rawValue,sender: nil)
    }
}
