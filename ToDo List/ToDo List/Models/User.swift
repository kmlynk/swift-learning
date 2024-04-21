//
//  User.swift
//  ToDo List
//
//  Created by Kamil Uyanık on 21.04.24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joinedAt: TimeInterval
}
