//
//  APIRouter.swift
//  chatByNotification
//
//  Created by Haydee Rodriguez on 5/28/18.
//  Copyright © 2018 Haydee Rodriguez. All rights reserved.
//

import Foundation

enum APIRouter {
    case sendNewMessage
    
    static var parametters: [String:Any] {
        return ["notification": [
                "title" : "New message",
                "body": "Hello Haydee this is the new app for chatrooms",
                "sound" : "bingbong.aiff",
                "badge" : 1
            ],
            "to" : "cJXV6qfqRQ4:APA91bEd2qu_IVilCsbftqQbluaaQdAGprcBmdgOne5VCfi_FNDDW-VTW1w0EHUsnkQFf_J7SsST-j_HpFjqhaYtvUfWB-bjNVHJVtN9cDMvwJGc6MFDa2yZax9L3t-61JV37rk-rRlf"
            ]
    }
}
