//
//  DefaultRequestBuilder.swift
//  
//
//  Created by Wesley Calazans on 11/08/23.
//

import Foundation

public class DefaultRequestBuilder: RequestBuilder {
        
    public func buildRequest(with endpoint: Endpoint, url: URL) -> URLRequest {
        var request = URLRequest(url: url)
        request.httpMethod = "POST" //endpoint.method.rawValue
        request.allHTTPHeaderFields = endpoint.headers
        
        if let parameters = endpoint.parameters {
            switch parameters {
            case .dictionary(let dictionary):
                request.httpBody = try? JSONSerialization.data(withJSONObject: dictionary, options: .fragmentsAllowed)
            case .encodable(let encodable):
                request.httpBody = try? JSONEncoder().encode(encodable)
            }
        }
        return request
    }
}
