//
//  ViewController.swift
//  MoyaPromiseDemo
//
//  Created by 假富贵儿 on 2019/11/16.
//  Copyright © 2019 假富贵儿. All rights reserved.
//

import UIKit
import Moya

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        MoyaProvider<MoyaApi>().request(.getData) { (result) in
//            switch result {
//            case .success(let response):
//
//                let json = try! JSONSerialization.jsonObject(with: response.data, options: [.mutableContainers])
//                print(json)
//            case .failure(let error):
//                print(error.localizedDescription)
//            }
//        }
        userPromise()
        
    }

    func userPromise() -> Void {
        RequestMoya(MoyaApi.getData)
    }
}

