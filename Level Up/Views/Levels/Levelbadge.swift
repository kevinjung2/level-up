//
//  Levelbadge.swift
//  Level Up
//
//  Created by Kevin Jung on 4/24/22.
//

import SwiftUI

struct Levelbadge: View {
    var level: Int
    
    var body: some View {
        ZStack {
            if level < 10 {
                CircleLevelBadgeBackground(colorOne: Color.gray, colorTwo: Color.white, borderColor: .black)
                Text(String(level))
                    .font(Font.custom("rainyhearts", size: 30))
            } else if level < 25 {
                TriangleLevelBadgeBackground(colorOne: Color.cyan, colorTwo: Color.green, borderColor: .black, borderRadius: 5)
                VStack {
                    Text(String(level))
                        .font(Font.custom("rainyhearts", size: 30))
                        .offset(y: 6)
                }
            } else {
                SquareLevelBadgeBackground(colorOne: Color.cyan, colorTwo: Color.blue, borderColor: .black)
                Text(String(level))
                    .font(Font.custom("rainyhearts", size: 30))
            }
            
        }
    }
}

struct Levelbadge_Previews: PreviewProvider {
    static var previews: some View {
        Levelbadge(level: 30)
    }
}
