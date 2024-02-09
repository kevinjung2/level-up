//
//  SkillDetail.swift
//  Level Up
//
//  Created by Kevin Jung on 4/24/22.
//

import SwiftUI

struct SkillDetail: View {
    var skill: Skill
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(.black)
                .overlay{
                    Text("Level UP")
                        .foregroundColor(.white)
                        .font(Font.custom("rainyhearts", size: 100))
                        .background(.black)
                        .padding(.bottom, 60.0)
                }
                .frame(width: 500, height: 200)
                .ignoresSafeArea(.all)

            
            SkillImage(skill: skill)
                .frame(width: 150, height: 150)
                .padding(.bottom, -150)
                .offset(y: -130)
            VStack(alignment: .center) {
                Text(skill.name)
                    .font(Font.custom("rainyhearts", size: 60))
                    .padding(.leading, 5)
                Text(skill.description)
                    .font(Font.custom("rainyhearts", size: 20))
                    .padding(.leading, 5)
                    .foregroundColor(.secondary)

            }
            LevelBar(currentLevel: skill.currentLevel, lastLevelXP: skill.lastLevelXP, currentXP: skill.currentXP, nextLevelXP: skill.nextLevelXP)
            
            List(skill.assignments) { assignment in
                AssignmentRow(assignment: assignment)
                    .padding(.bottom)
                    .ignoresSafeArea()
            }
            Spacer()

        }
    }
}

struct SkillDetail_Previews: PreviewProvider {
    static var previews: some View {
        SkillDetail(skill: Skill(id: 1, name: "Finance", description: "Grow with savings and investments", imageName: "money_bag", currentLevel: 9, currentXP: 15404, lastLevelXP: 15000, nextLevelXP: 16000, assignments: [Assignment(id: 1, name: "Invest $10", description: "put 10 dollars into your IRA", repeatable: true, completed: 2, experience: 5), Assignment(id: 2, name: "Save $200", description: "put 200 dollars into a savings account", repeatable: true, completed: 3, experience: 14),Assignment(id: 3, name: "Pay off a loan", description: "Fully pay off a debt", repeatable: true, completed: 1, experience: 100), Assignment(id: 4, name: "Other Task", description: "Some other task", repeatable: true, completed: 6, experience: 30)]))
    }
}
