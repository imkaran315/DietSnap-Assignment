//
//  PieCharts.swift
//  DietSnap-Assignment
//
//  Created by Karan Verma on 05/04/24.
//

import SwiftUI

struct PieChart: Shape {
    var startAngle: Angle
    var endAngle: Angle
    var completionPercentage: Double
    var completionAngle: Angle {
        let angle : Angle = (endAngle - startAngle)*completionPercentage
        return angle
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2
        
        // Outer circle
        path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: false)
       
        
        // Inner circle
        let innerRadius = radius * 0.85
        path.addArc(center: center, radius: innerRadius, startAngle: endAngle, endAngle: startAngle, clockwise: true)
        
        path.closeSubpath()
        
        return path
    }
}
