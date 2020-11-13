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

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    let provider = MoyaProvider<CivilizationsAPI>()

    override func viewDidLoad() {
        super.viewDidLoad()
        requestCivilization()
        setTable()
    }
    
    func setTable() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell")
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

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         
        return 0
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
        return UITableViewCell()
     }
}

