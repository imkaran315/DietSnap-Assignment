//
//  ActivityHeroView.swift
//  DietSnap-Assignment
//
//  Created by Karan Verma on 04/04/24.
//

import SwiftUI
import Charts

struct ActivityHeroViewSection: View {
    
    let completionPercent: Double
    let calories: Int
    let daysCompleted: Int
    let totalDays: Int
    let healthScore: Int
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            VStack{
                
                Text("Today")
                    .font(.system(size: 18, weight:.bold))
                    .foregroundStyle(.black)
            
                Text(Date.now, format: .dateTime.weekday().day().month())
                    .font(.system(size: 15))
                    .foregroundStyle(.gray)
                
                Spacer().frame(height: 221)
//                Chart(data, id: <#T##KeyPath<_, ID>#>){ element in
//                  SectorMark(
//                    angle: .value("Sales", element.sales),
//                    innerRadius: .ratio(0.618),
//                    angularInset: 1.5
//                  )
//                  .cornerRadius(5)
//                  .foregroundStyle(by: .value("Name", element.name))
//                }
                
                HStack{
                    HStack{
                       Image("Diets")
                       Text("Diets Pts")
                    }
                    
                    HStack{
                        Image("Exercise")
                        Text("Exercise Pts")
                    }
                }
                .font(.system(size: 14))
                .padding()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("\(calories)")
                            .foregroundStyle(.orange)
                        Text("Cal")
                    }
                    .padding()
                    
                    VStack{
                        Text("\(daysCompleted)/\(totalDays)")
                            .foregroundStyle(.orange)
                        Text("Days")
                    }
                    .padding()
                    
                    VStack{
                        Text("\(healthScore)")
                            .foregroundStyle(.orange)
                        Text("Health Score")
                    }
                    Spacer()
                }
                
                
                    
                Spacer()
            }
            .backgroundStyle(.white)
        }
    }
}

#Preview {
    ActivityHeroViewSection(completionPercent: 73, calories: 1500, daysCompleted: 3, totalDays: 5, healthScore: 88)
}
