//
//  HomeView.swift
//  RM_portfolio
//
//  Created by 황경원 on 2023/03/20.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            
            // map
            VStack {
                Text("Home View")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            VStack {
                VStack(alignment: .leading) {
                    VStack {
                        
                        HStack {
                            Spacer()
                            
                            Image(systemName: "drop")
                                .rotationEffect(.degrees(180))
                            Text("위치 정보")
                            Image(systemName: "cloud")
                            Text("17")
                            
                            Spacer()
                            
                            Image(systemName: "bell")
                        }
                        Text("hello swift")
                            .foregroundColor(.gray)
                    }
                    .padding()
                    .padding(.top, 30)
                    
                    VStack(alignment: .leading) {
                        Text("Name")
                            .font(.title)
                            .fontWeight(.heavy)
                        Text("welcome!")
                        
                        VStack {
                            HStack {
                                Image(systemName: "person")
                                    .padding()
                                    .background(.orange)
                                    .clipShape(Circle())
                                
                                VStack {
                                    Text("Beginner")
                                    Text("Lv. 01")
                                }
                                Spacer()
                                VStack {
                                    Text("Current rankings")
                                    Text("- Rank")
                                }
                            }
                            VStack {
                                Rectangle()
                                    .frame(maxWidth: .infinity, maxHeight: 5)
                                    .cornerRadius(5)
                                HStack {
                                    Text("0km")
                                    Spacer()
                                    Text("43km")
                                }
                            }
                            
                        }
              
                        .padding()
                        
                    }
 
                }
                .padding()
                .foregroundColor(.white)
                .background(.black)
                .opacity(0.7)
                .cornerRadius(10)
                
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
