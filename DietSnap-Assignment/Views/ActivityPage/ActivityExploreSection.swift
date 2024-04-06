//
//  ActivityExploreSection.swift
//  DietSnap-Assignment
//
//  Created by Karan Verma on 05/04/24.
//

import SwiftUI

struct ActivityExploreSection: View {
    var body: some View {
        ZStack{
            Color.white
            
            VStack{
                
                // Heading i.e. Explore
                HStack{
                    Text("Explore")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                    Spacer()
                }
                .padding()
                
                //1
                HStack{
                    // image
                    Image("Glyph1")
                    
                    // Info and title
                    VStack(alignment: .leading){
                        Text("Find Diets")
                            .padding(.bottom, 8)
                            .font(.system(size: 17))
                        
                        Text("Find premade diets according to your cuisine")
                            .foregroundStyle(.gray)
                            .font(.system(size: 12))
                    }
                    .padding()

                    Spacer()
                    
                  
                }
                .padding()
                
                //2
                HStack{
                    // image
                    Image("Glyph2")
                    
                    // Info and title
                    VStack(alignment: .leading){
                        Text("Find Nutritionist")
                            .padding(.bottom, 8)
                            .font(.system(size: 17))
                        
                        Text("Get customized diets to achieve your health goal")
                            .lineSpacing(8)
                            .foregroundStyle(.gray)
                            .font(.system(size: 12))
                    }
                    .padding()

                    Spacer()
                    
                  
                }
                .padding()
                
            }
        }
    }
}

#Preview {
    ActivityExploreSection()
}
