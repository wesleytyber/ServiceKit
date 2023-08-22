//
//  NetworkLayer.swift
//  
//
//  Created by Wesley Calazans on 11/08/23.
//

import Foundation

protocol NetworkLayer {
    func request<T>(with endpoint: Endpoint, decodeType: T.Type, completion: @escaping (Result<T, NetworkError>) -> Void) where T : Decodable
}
