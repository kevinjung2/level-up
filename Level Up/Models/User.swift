//
//  User.swift
//  Level Up
//
//  Created by Kevin Jung on 2/9/24.
//

import Foundation

struct User: Identifiable, Codable {
    var id: Int
    var skills: [Skill] = []
}
