//
//  Question.swift
//  Moyas
//
//  Created by User on 11/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation

struct Question : Decodable {
    let question : String
    let published_at : String
    let choices : [String]
}
