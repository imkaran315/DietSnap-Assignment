//
//  FoodInfoFactsCell.swift
//  DietSnap-Assignment
//
//  Created by Karan Verma on 06/04/24.
//

import SwiftUI

struct FoodInfoFactsCell: View {
    var body: some View {
        VStack{
            Text("Did you know?")
                .padding()
                .font(.system(size: 18))
                .fontWeight(.heavy)
            
            Text("There are more chickens on earth than humsans")
                .font(.system(size: 17))
            
                
            Spacer()
        }
        .foregroundStyle(.white)
        .frame(width: 343, height: 184)
        .background(Color.yellow)

    }
    
}
    

#Preview {
    FoodInfoFactsCell()
}
