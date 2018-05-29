//
//  ChatViewController.swift
//  chatByNotification
//
//  Created by Haydee Rodriguez on 5/23/18.
//  Copyright © 2018 Haydee Rodriguez. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {
    
    var usernameLabel = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

class SendMessageController: UIViewController {
    
    @IBOutlet weak var text: UITextField!
    
    
    @IBAction func sendMessage(_ sender: UIButton){
        
    }
    
}
