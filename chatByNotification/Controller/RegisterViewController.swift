//
//  RegisterViewController.swift
//  chatByNotification
//
//  Created by Haydee Rodriguez on 5/28/18.
//  Copyright © 2018 Haydee Rodriguez. All rights reserved.
//

import Foundation
import Eureka

class RegisterViewController: FormViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        form +++ Section("Register")
            <<< TextRow(){ row in
                row.title = "Email"
                row.placeholder = "Enter your emain"
            }
            <<< PhoneRow(){
                $0.title = "Phone Row"
                $0.placeholder = "And numbers here"
            }
            +++ Section("Section2")
            <<< DateRow(){
                $0.title = "Date Row"
                $0.value = Date(timeIntervalSinceReferenceDate: 0)
        }
    }
}
