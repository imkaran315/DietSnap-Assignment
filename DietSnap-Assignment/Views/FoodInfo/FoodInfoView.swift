//
//  FoodInfoView.swift
//  DietSnap-Assignment
//
//  Created by Karan Verma on 06/04/24.
//

import SwiftUI

struct FoodInfoView: View {
    var body: some View {
        ZStack{
            Color.white
            ScrollView{

//---------------------------------------------------------------------------------------
// Header Image
                ZStack{
                    Image("FoodImage")
                        .resizable()
                        .scaledToFill()
                        
                    // Text on Image
                    VStack {
                        Spacer()
                        HStack{
                            VStack(alignment: .leading){
                                Text("Food Information")
                                    .font(.system(size: 15))
                                    .fontWeight(.medium)
                                Text("Fried Chicken")
                                    .font(.system(size: 28))
                                    .fontWeight(.bold)
                                    .padding(.bottom)
                            }
                            .foregroundStyle(.white)
                            .padding(.leading)
                            Spacer()
                        }
                    }
                    .frame(maxHeight: 350)
                }
               
                
//---------------------------------------------------------------------------------------
// Description
                
                VStack(alignment: .leading){
                    Text("Description")
                        .padding(.bottom)
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                        
                    Text("Fried chicken a dish consisting of chicken pieces usually from broiler chickens which has been floured or battered and then pan fried, deep fried or pressure fried. ")
                        .padding(.bottom)
                        .font(.system(size: 18))
                        .lineSpacing(5)
                }
                .padding(.leading, 7)
                .padding(.trailing)
                
                
//---------------------------------------------------------------------------------------
// Macro Nutrients
                
                VStack(alignment: .leading){
                    HStack {
                        Text("Macro Nutrients")
                            .padding(.all)
                            .font(.system(size: 22))
                            .fontWeight(.bold)
                        
                        Spacer()
                    }
                    }
                
              Spacer().frame( height: 300)
                
//---------------------------------------------------------------------------------------
// Facts
                HStack {
                    Text("Facts")
                        .padding(.all)
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                
                ScrollView(.horizontal) {
                    HStack(spacing: 20) {
                        ForEach(0..<10) {_ in 
                            FoodInfoFactsCell()
                        }
                    }
                }
        

//---------------------------------------------------------------------------------------
// Similar Items
                HStack {
                    Text("Similar Items")
                        .padding(.all)
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                    
                    Spacer()
                }
                
                ScrollView(.horizontal) {
                    HStack(spacing: 10) {
                        ForEach(0..<10) {_ in
                            FoodInfoSimilarItemsCell(dishName: "Pulav")
                        }
                    }
                }

//---------------------------------------------------------------------------------------
                Spacer()
            }
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    FoodInfoView()
}
