//
//  SkillImage.swift
//  Level Up
//
//  Created by Kevin Jung on 4/24/22.
//

import SwiftUI

struct SkillImage: View {
    var skill: Skill
    
    var body: some View {
        skill.image
            .resizable(resizingMode: .stretch)
            .padding(10)
            .background(.white)
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.black, lineWidth: 4)
            }
            .shadow(radius: 7)
            }
}

struct SkillImage_Previews: PreviewProvider {
    static var previews: some View {
        SkillImage(skill: Skill(id: 1, name: "finance", description: "Grow with savings and investments", imageName: "money_bag", currentLevel: 9, currentXP: 15504, nextLevelXP: 16000, assignments: [Assignment(id: 1, name: "Invest $10", description: "put 10 dollars into a savings account", repeatable: true, completed: 2, experience: 5)]))
    }
}
