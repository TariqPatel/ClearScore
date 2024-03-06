//
//  NetworkErrorEnum.swift
//  ClearScore
//
//  Created by Tasneem Patel on 2024/03/06.
//

import Foundation

enum NetworkError: Error {
    
    case error(error: String)
    case dataInvalid
    case responseInvalid
    case errorDecoding(error: String)
}
