//
//  TriangleLevelBadgeBackground.swift
//  Level Up
//
//  Created by Kevin Jung on 4/24/22.
//

import SwiftUI

struct TriangleLevelBadgeBackground: View {
    var colorOne: Color
    var colorTwo: Color
    var borderColor: Color
    var borderRadius: CGFloat
    
    var body: some View {
        Triangle(radius: borderRadius)
            .fill(RadialGradient(gradient: Gradient(colors: [colorOne, colorTwo]), center: .bottom, startRadius: 0, endRadius: 35))
            .frame(width: 60, height: 60)
            .shadow(color: .gray, radius: 7)
            .overlay{
                Triangle(radius: borderRadius).stroke(borderColor, lineWidth: 4)
            }
    }
}


struct TriangleLevelBadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        TriangleLevelBadgeBackground(colorOne: Color.cyan, colorTwo: Color.green, borderColor: .black, borderRadius: 5)
    }
}
