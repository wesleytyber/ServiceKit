//
//  Endpoint.swift
//  
//
//  Created by Wesley Calazans on 11/08/23.
//

import Foundation

public struct Endpoint {
    let url: String
    let method: HTTPMethod
    let headers: [String: String]?
    let parameters: Parameters?
    
    public init(url: String,
                method: HTTPMethod = .get,
                headers: [String : String]? = nil,
                parameters: Parameters? = nil) {
        self.url = url
        self.method = method
        self.headers = headers
        self.parameters = parameters
    }
    
}

public enum Parameters {
    case dictionary([String: Any])
    case encodable(Encodable)
}
