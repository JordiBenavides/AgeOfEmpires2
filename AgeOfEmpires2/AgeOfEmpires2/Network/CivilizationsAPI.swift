//
//  CivilizationsAPI.swift
//  AgeOfEmpires2
//
//  Created by Jordi Milla on 13/11/2020.
//  Copyright © 2020 Jordi Milla Catalan. All rights reserved.
//

import Foundation
import Moya

enum CivilizationsAPI {
    case getCivilization
}

extension CivilizationsAPI:TargetType,AccessTokenAuthorizable {
    public var baseURL: URL {  return URL(string: "https://age-of-empires-2-api.herokuapp.com/api/v1/")!}
    
    public var path: String {
        switch self {
        case .getCivilization:
            return "civilizations"
        }
        
    }
    
    var method: Moya.Method {
        switch self {
        case .getCivilization:
            return .get
            
        }
    }
    
    var authorizationType: AuthorizationType {
        switch self {
        case .getCivilization:
            return .bearer
        }
    }
    
    public var task: Task {
        switch self {
        case .getCivilization:
            return .requestPlain
        }
    }
    
    public var validationType: ValidationType {
        return .none
    }
    
    public var sampleData: Data {
        return "".data(using: String.Encoding.utf8)!
    }
    
    public var headers: [String: String]? {
        return nil
    }
}
