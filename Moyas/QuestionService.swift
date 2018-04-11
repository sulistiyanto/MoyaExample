//
//  QuestionService.swift
//  Moyas
//
//  Created by User on 11/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import Foundation
import Moya

enum QuestionService {
    case readQuestion
}

extension QuestionService: TargetType {
    var baseURL: URL {
        return URL(string: "http://private-965f0-assessment5.apiary-mock.com")!
    }
    
    var path: String {
        return "/questions"
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        return .requestPlain
    }
    
    var headers: [String : String]? {
        return ["Content-Typer": "application/json"]
    }
    
}
