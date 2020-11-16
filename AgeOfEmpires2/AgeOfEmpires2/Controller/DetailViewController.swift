//
//  DetailViewController.swift
//  AgeOfEmpires2
//
//  Created by Jordi Milla on 16/11/2020.
//  Copyright © 2020 Jordi Milla Catalan. All rights reserved.
//

import Foundation
import UIKit
import Moya

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var team_bonusLabel: UILabel!
    
    let provider = MoyaProvider<CivilizationsAPI>()
    var id: Int?
    var data: Civilizations?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        requestCiviById()
    }
    
    func updateLabels(){
        nameLabel.text = data?.name
        team_bonusLabel.text = data?.team_bonus
    }
    
    func requestCiviById() {

        provider.request(.getCiviById(id: id ?? 1)) { result in
            switch result {
            case .success(let response):
                print("success")
                let array : Civilizations = try! response.map(Civilizations.self)
                self.data = array
                self.updateLabels()
            case .failure:
                print("Error")
            }
        }
    }
}
