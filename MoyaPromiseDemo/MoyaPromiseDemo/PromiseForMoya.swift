//
//  PromiseForMoya.swift
//  MoyaPromiseDemo
//
//  Created by 假富贵儿 on 2019/11/16.
//  Copyright © 2019 假富贵儿. All rights reserved.
//

import Foundation
import Moya
import PromiseKit

func RequestMoya<T: TargetType>(_ target: T) -> Void {
    MoyaProvider<T>().request(target) { (result) in
        switch result {
        case .success(let response):
            let json = try! JSONSerialization.jsonObject(with: response.data, options: [.mutableContainers])
            print(json)
        case .failure(let error):
            print(error.localizedDescription)
        }
    }
}
