//
//  Civilizations.swift
//  AgeOfEmpires2
//
//  Created by Jordi Milla on 13/11/2020.
//  Copyright © 2020 Jordi Milla Catalan. All rights reserved.
//

import Foundation

struct ResponseAPI: Codable {
    
    let civilizations:[Civilizations]
}

struct Civilizations: Codable {
    
    let id: Int
    let name: String
    let army_type: String
}
