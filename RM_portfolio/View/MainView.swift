//
//  MainView.swift
//  RM_portfolio
//
//  Created by 황경원 on 2023/03/20.
//

import SwiftUI

struct MainView: View {
    
    @State var selectedItem = 0

    var body: some View {
        VStack {
            TabView(selection: $selectedItem) {
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                    .tag(0)
                
                ContestView()
                    .tabItem {
                        Image(systemName: "flag")
                        Text("Contest")
                    }
                    .tag(1)
                
                RankingView()
                    .tabItem {
                        Image(systemName: "medal")
                        Text("Ranking")
                    }
                    .tag(2)
                
                GymView()
                    .tabItem {
                        Image(systemName: "dumbbell")
                        Text("Gym")
                    }
                    .tag(3)
                
                ProfileView()
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                        Text("Profile")
                    }
                    .tag(4)
            }
            .tabViewStyle(DefaultTabViewStyle())
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
