//
//  FoodInfoSimilarItemsCell.swift
//  DietSnap-Assignment
//
//  Created by Karan Verma on 06/04/24.
//

import SwiftUI

struct FoodInfoSimilarItemsCell: View {
    let dishName : String?
    var body: some View {
        ZStack{
            Image("Pulav")
            VStack(alignment: .leading){
                Spacer()
                Text(dishName ?? "nil")
                    .foregroundStyle(.white)
                    .font(.system(size: 16))
                    .fontWeight(.bold)
            }
            .frame(width: 157)
        }
        .frame(width: 157, height: 113)
    }
}

#Preview {
    FoodInfoSimilarItemsCell(dishName: "Pulav")
}
