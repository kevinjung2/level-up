//
//  SquareLevelBadgeBackground.swift
//  Level Up
//
//  Created by Kevin Jung on 4/24/22.
//

import SwiftUI

struct SquareLevelBadgeBackground: View {
    var colorOne: Color
    var colorTwo: Color
    var borderColor: Color
    
    var body: some View {
        Rectangle()
            .fill(RadialGradient(gradient: Gradient(colors: [colorOne, colorTwo]), center: .center, startRadius: 0, endRadius: 40))
            .frame(width: 60, height: 60)
            .cornerRadius(10)
            .overlay {
                RoundedRectangle(cornerRadius: 10).stroke(borderColor, lineWidth: 4)
            }
            .shadow(color: .gray, radius: 7)
    }
}

struct SquareLevelBadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        SquareLevelBadgeBackground(colorOne: Color.cyan, colorTwo: Color.blue, borderColor: .black)
    }
}
