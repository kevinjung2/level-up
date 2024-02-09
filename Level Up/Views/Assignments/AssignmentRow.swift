//
//  AssignmentRow.swift
//  Level Up
//
//  Created by Kevin Jung on 4/24/22.
//

import SwiftUI

struct AssignmentRow: View {
    var assignment: Assignment
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(assignment.name)
                    .foregroundColor(.primary)
                    .font(Font.custom("rainyhearts", size: 30))
                    .allowsTightening(true)
                    .minimumScaleFactor(0.5)
                Text(assignment.description)
                    .foregroundColor(.secondary)
                    .font(Font.custom("rainyhearts", size: 20))

            }
            .padding(.leading, 5)
            
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.blue)
                    .frame(width: 110, height: 50)
                    .overlay(Text("Complete")
                                .font(Font.custom("rainyhearts", size: 25)))
                    .padding(.trailing, 5)
                Text("XP: \(assignment.experience)")
                    .font(Font.custom("rainyhearts", size: 20))
                    .padding(.trailing)
            }
        }
    }
}

struct AssignmentRow_Previews: PreviewProvider {
    static var previews: some View {
        AssignmentRow(assignment: Assignment(id: 1, name: "Invest $10", description: "put 10 dollars into a savings account", repeatable: true, completed: 2, experience: 5))
    }
}
