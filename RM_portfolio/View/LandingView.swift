//
//  LandingView.swift
//  RM_portfolio
//
//  Created by 황경원 on 2023/03/20.
//

import SwiftUI

struct LandingView: View {
    @Binding var pageStatus: PageStatus
    @State private var selectedTab = 0
    @State private var isAllow = false
    var body: some View {
        ZStack {
            backgroundImage
            VStack {
                TabView(selection: $selectedTab) {
                    coverView
                        .tag(0)
                    confirmView
                        .tag(1)
                }
                .tabViewStyle(PageTabViewStyle())
                
                nextButton
            }
            .foregroundColor(.white)
            .alert("Allow ... ?", isPresented: $isAllow) {
                Button("OK", role: .cancel) {
                    pageStatus = .afterAllow
                    
                }
            }
        }
    }
    
    var backgroundImage: some View {
        ZStack {
            Image("running")
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            Rectangle()
                .foregroundColor(.black)
                .opacity(0.3)
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    var coverView: some View {
        VStack {
            
            Text("Title")
            Spacer()
            Text("content")
            Text("content")
            Spacer()
            
        }
        .fontWeight(.heavy)
        .font(.title)
    }
    
    var confirmView: some View {
        VStack {
            
            Text("Title")
            Spacer()
            Text("allow ...")
            Text("allow ...")
            Spacer()
            
        }
        .fontWeight(.heavy)
        .font(.title)
    }
    
    var nextButton: some View {
        Button(selectedTab == 0 ? "Next" : "Confirm") {
            if selectedTab == 0 {
                selectedTab = 1
            } else {
                isAllow = true
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(.blue)
        .font(.largeTitle)
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView(pageStatus: .constant(.beforeAllow))
    }
}
