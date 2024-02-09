//
//  SkillList.swift
//  Level Up
//
//  Created by Kevin Jung on 4/22/22.
//

import SwiftUI

struct SkillList: View {
    var skills: [Skill]
    
    var body: some View {
        NavigationView{
            VStack{
                ForEach(skills) { skill in
                    NavigationLink{
                        SkillDetail(skill: skill)
                    } label: {
                        SkillRow(skill: skill)
                    }
                }
            }
        }
    }
}

struct SkillList_Previews: PreviewProvider {
    static var previews: some View {
        SkillList(skills: [Skill(id: 1, name: "finance", description: "Grow with savings and investments", imageName: "money_bag", currentLevel: 9, currentXP: 15504, nextLevelXP: 16000, assignments: [Assignment(id: 1, name: "Invest $10", description: "put 10 dollars into a savings account", repeatable: true, completed: 2, experience: 5)]), Skill(id: 2, name: "Health", description: "Become", imageName: "moeny_bag", currentLevel: 9, currentXP: 15504, nextLevelXP: 16000, assignments: [Assignment(id: 1, name: "Save $30", description: "put 30 dollars into a savings account", repeatable: true, completed: 3, experience: 10)])])
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
