//
//  CircleLevelBadge.swift
//  Level Up
//
//  Created by Kevin Jung on 4/24/22.
//

import SwiftUI

struct CircleLevelBadgeBackground: View {
    var colorOne: Color
    var colorTwo: Color
    var borderColor: Color
    
    var body: some View {
        Circle()
            .fill(RadialGradient(gradient: Gradient(colors: [colorOne, colorTwo]), center: .center, startRadius: 0, endRadius: 75))
            .frame(width: 60, height: 60)
            .shadow(color: .gray, radius: 7)
            .overlay{
                Circle().stroke(borderColor, lineWidth: 4)
            }
    }
}

struct CircleLevelBadge_Previews: PreviewProvider {
    static var previews: some View {
        CircleLevelBadgeBackground(colorOne: Color.gray, colorTwo: Color.white, borderColor: .black)
    }
}
