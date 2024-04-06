//
//  TabBar.swift
//  DietSnap-Assignment
//
//  Created by Karan Verma on 03/04/24.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            ActivityView()
                .tabItem {
                    Image("Activity")
                    Text("Activity")
                }
            GoalsView()
                .tabItem {
                    Image("Goals")
                    Text("Goals")
                }
            CameraView()
                .tabItem {
                    Image("Camera")
                    Text("Camera")
                }
            FeedView()
                .tabItem {
                    Image("Feed")
                    Text("Feed")
                }
            ProfileView()
                .tabItem {
                    Image("Profile")
                    Text("Profile")
                }
        }
        .tint(.black)
        .backgroundStyle(.white)
        
        
    }
}

#Preview {
    TabBar()
}
