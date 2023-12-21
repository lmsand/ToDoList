//
//  User.swift
//  ToDoList
//
//  Created by lexi sanders on 12/20/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
