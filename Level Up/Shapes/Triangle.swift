//
//  Triangle.swift
//  Level Up
//
//  Created by Kevin Jung on 4/24/22.
//

import SwiftUI

struct Triangle: Shape {
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let width = rect.maxX / 2
        let height = rect.maxY / 2

        
        // Draw the triangle path with its origin at the center.
        let point1 = CGPoint(x: -width, y: height)
        let point2 = CGPoint(x: 0, y: -height)
        let point3 = CGPoint(x: width, y: height)

        var path = Path()
        path.move(to: CGPoint(x: 0, y: height))
        path.addArc(tangent1End: point1, tangent2End: point2, radius: radius)
        path.addArc(tangent1End: point2, tangent2End: point3, radius: radius)
        path.addArc(tangent1End: point3, tangent2End: point1, radius: radius)
        path.closeSubpath()
        path = path.offsetBy(dx: width, dy: height / 1.2)

        return path
        
//        path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
//        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
//        path.addLine(to: CGPoint(x: rect.midX, y: (rect.minY + rect.midY / 2)))
//        path.closeSubpath()
        
//        return path
    }
}

struct Triangle_Previews: PreviewProvider {
    static var previews: some View {
        Triangle(radius: 8)
            .stroke(Color.blue, lineWidth: 3)
            .frame(width: 75, height: 75)
    }
}
