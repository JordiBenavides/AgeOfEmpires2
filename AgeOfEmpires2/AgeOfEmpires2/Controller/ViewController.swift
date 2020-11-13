//
//  ViewController.swift
//  AgeOfEmpires2
//
//  Created by Jordi Milla on 13/11/2020.
//  Copyright © 2020 Jordi Milla Catalan. All rights reserved.
//

import Foundation
import UIKit
import Moya

class ViewController: UIViewController {
    
    let provider = MoyaProvider<CivilizationsAPI>()

    override func viewDidLoad() {
        super.viewDidLoad()
        requestCivilization()
    }

    func requestCivilization() {
        
        provider.request(.getCivilization) { result in
            switch result {
            case .success(let response):
                print("success")
//                let array = try! response.map([Movie].self)
//                self.data = array
//                self.tableView.reloadData()
            case .failure:
                print("Error")
            }
        }
    }

}

