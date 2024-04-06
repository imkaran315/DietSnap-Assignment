//
//  ActivityNavBar.swift
//  DietSnap-Assignment
//
//  Created by Karan Verma on 03/04/24.
//

import SwiftUI

struct ActivityNavBar: View {
    var body: some View {
        HStack {
            // App logo
            Image("AppName")
            
            Spacer()
            
            // Right Bar buttons
            HStack(spacing: 20) {
                Button(action: {
                    
                }) {
                    Image("BellIcon")
                }
                
                Button(action: {
                    // Handle Rewards button action
                }) {
                    Image("RewardsIcon")
                }
                
                Button(action: {
                    // Handle Messages button action
                }) {
                    Image("MessagesIcon")
                }
            }
            .font(.headline)
            .frame(height: 67)
        }
        .padding()
    }
}

#Preview {
    ActivityNavBar()
}
