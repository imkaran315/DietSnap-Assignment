//
//  ActivityYourGoalsSection.swift
//  DietSnap-Assignment
//
//  Created by Karan Verma on 05/04/24.
//

import SwiftUI

struct ActivityYourGoalsSection: View {
    
    let completionPercent: Double
        
    
    var body: some View {
        ZStack{
            Color.white
            
            VStack{
                HStack{
                    Text("Your Goals")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                    Spacer()
                }
                .padding()
                
                HStack{
                    // image
                    Image("Img1")
                    
                    // Info and title
                    VStack(alignment: .leading){
                        Text("Keto Weight Loss" )
                            .font(.system(size: 17))
                        Text("Current Major Goal")
                            .foregroundStyle(.gray)
                            .font(.system(size: 15))
                    }
                    .padding(.leading)
                    Spacer()
                    // Stoke and completion percent
                    ZStack{
                        Image("Stroke")
                        Text("\(Int(completionPercent))")
                    }
                    .padding()
                  
                }
                .padding()
                .background(Color(CGColor(red: 250, green: 250, blue: 255, alpha: 1)))
            }
        }
    }
}

#Preview {
    ActivityYourGoalsSection(completionPercent: 73)
}
