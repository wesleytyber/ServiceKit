//
//  RequestBuilder.swift
//  
//
//  Created by Wesley Calazans on 11/08/23.
//

import Foundation

protocol RequestBuilder {
    func buildRequest(with endpoint: Endpoint, url: URL) -> URLRequest
}
