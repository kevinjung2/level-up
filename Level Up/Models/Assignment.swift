//
//  Assignment.swift
//  Level Up
//
//  Created by Kevin Jung on 4/24/22.
//

import Foundation

struct Assignment: Identifiable, Codable {
    var id: Int
    var name: String
    var description: String
    var repeatable: Bool
    var completed: Int
    var experience: Int
}
