//
//  MoyaForApi.swift
//  MoyaPromiseDemo
//
//  Created by 假富贵儿 on 2019/11/16.
//  Copyright © 2019 假富贵儿. All rights reserved.
//

import Foundation
import Moya

enum MoyaApi {
    case getData
}
//http://gank.io/api/today

extension MoyaApi: TargetType {
    var baseURL: URL {
        return URL(string: "http://gank.io")!
    }
    
    var path: String {
        return "/api/today"
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var sampleData: Data {
        return Data.init(base64Encoded: "no thing")!
    }
    
    var task: Task {
        return .requestPlain
    }
    
    var headers: [String : String]? {
        return nil
    }
    
    
}
