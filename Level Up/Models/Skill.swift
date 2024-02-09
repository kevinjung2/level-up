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
    var lastLevelXP: CGFloat
    var nextLevelXP: CGFloat
    
    var assignments: [Assignment]
    
    func getNextLevelXP() -> CGFloat{
        return (self.nextLevelXP - self.lastLevelXP)*1.3 + self.nextLevelXP
    }
    
    mutating func levelUp() {
        let lastLevel = nextLevelXP
        currentLevel += 1
        nextLevelXP = getNextLevelXP()
        lastLevelXP = lastLevel
    }
}
