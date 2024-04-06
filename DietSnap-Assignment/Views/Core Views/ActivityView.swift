//
//  ContentView.swift
//  DietSnap-Assignment
//
//  Created by Karan Verma on 03/04/24.
//

import SwiftUI

struct ActivityView: View {
    @State var completionPercent: Double = 73
    @State var calories: Int = 1500
    @State var daysCompleted: Int = 3
    @State var totalDays: Int = 5
    @State var healthScore: Int = 88
    
    @State private var isShowingSheet = false
    
    var body: some View {
        NavigationView {
            ZStack {
                /// ZStack to add background color
                Color.white
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack {
                        ActivityNavBar()
                        ActivityHeroViewSection(completionPercent: completionPercent,
                                                calories: calories,
                                                daysCompleted: daysCompleted,
                                                totalDays: totalDays,
                                                healthScore: healthScore)
                        ActivityYourGoalsSection(completionPercent: completionPercent)
                        ActivityExploreSection()
                        
                        // Button to view Food Info page, ( only for assignment purpose)
                        Button("Food Info Page"){
                            isShowingSheet.toggle()
                        }
                        .background(Color.red)
                        .foregroundStyle(.white)
                        .sheet(isPresented: $isShowingSheet ,content: {
                            FoodInfoView()
                        })
                        
                    }
                }
            }
            
            
        }
        
    }
        
        
}

#Preview {
    ActivityView()
}
