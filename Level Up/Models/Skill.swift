//
//  Skill.swift
//  Level Up
//
//  Created by Kevin Jung on 4/22/22.
//

import Foundation
import SwiftUI

struct Skill: Identifiable, Codable {
    var id: Int
    var name: String
    var description: String
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var currentLevel: Int
    var currentXP: CGFloat
    var nextLevelXP: CGFloat
    
    var assignments: [Assignment]
    
}
