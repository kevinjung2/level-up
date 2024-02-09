//
//  Levelbar.swift
//  Level Up
//
//  Created by Kevin Jung on 4/24/22.
//

import SwiftUI

struct LevelBar: View {
    var currentLevel: Int
    var currentXP: CGFloat
    var nextLevelXP: CGFloat

    var body: some View {
        VStack {
            HStack{
                Levelbadge(level: currentLevel)
                
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.blue)
                        .frame(width: currentXP/nextLevelXP*200, height: 30)
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(.black, lineWidth: 3)
                        .frame(width: 200, height: 30)
                }
                .padding()
                
                Levelbadge(level: currentLevel + 1)
            }
            Text("\(Int(currentXP)) / \(Int(nextLevelXP))")
                .foregroundColor(.secondary)
                .font(Font.custom("rainyhearts", size: 20))
                .offset(y: -20)
        }
    }
}

struct LevelBar_Previews: PreviewProvider {
    static var previews: some View {
        LevelBar(currentLevel: 9, currentXP: 15345, nextLevelXP: 20000)
    }
}
