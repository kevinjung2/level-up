//
//  SkillRow.swift
//  Level Up
//
//  Created by Kevin Jung on 4/22/22.
//

import SwiftUI

struct SkillRow: View {
    var skill: Skill
    
    var body: some View {
        HStack {
            SkillImage(skill: skill)
                .frame(width: 70, height: 70)
                .padding(.leading)
            
            VStack(alignment: .leading) {
                Text(skill.name)
                    .foregroundColor(.primary)
                    .font(Font.custom("rainyhearts", size: 35))
                Text(skill.description)
                    .foregroundColor(.secondary)
                    .font(Font.custom("rainyhearts", size: 20))

            }
            
            Spacer()

            Levelbadge(level: 17)
                .padding(.trailing)
        }
    }
}

struct SkillRow_Previews: PreviewProvider {
    static var previews: some View {
        SkillRow(skill: Skill(id: 1, name: "Finance", description: "Grow with savings and investments", imageName: "money_bag", currentLevel: 9, currentXP: 15504, nextLevelXP: 16000, assignments: [Assignment(id: 1, name: "Invest $10", description: "put 10 dollars into a savings account", repeatable: true, completed: 2, experience: 5)]))
    }
}
