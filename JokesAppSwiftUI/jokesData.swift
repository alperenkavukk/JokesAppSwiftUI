//
//  jokesData.swift
//  JokesAppSwiftUI
//
//  Created by Alperen Kavuk on 13.09.2022.
//

import Foundation
struct Welcome: Identifiable, Codable {
    let id = UUID()
    let type: String
    let value: [Value]
}

// MARK: - Value
struct Value: Identifiable, Codable {
    let id: Int
    let joke: String
    let categories: [String]
}

//http://api.icndb.com/jokes/random/5
