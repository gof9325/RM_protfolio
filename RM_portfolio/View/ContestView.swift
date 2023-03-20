//
//  ContestView.swift
//  RM_portfolio
//
//  Created by 황경원 on 2023/03/20.
//

import SwiftUI

struct ContestView: View {
    
    @State var selectedItem = 0
    
    let contestItems = [
        ContestModel(title: "2023 B급마라톤 - 꿀벌런", startDate: Date(), endDate: Date()),
        ContestModel(title: "2023 새해마라톤", startDate: Date(), endDate: Date())
    ]
    
    var body: some View {
        
        NavigationView {
            VStack {
                HStack(spacing: 50) {
                    Button("애니멀런") {
                        selectedItem = 0
                    }
                    .foregroundColor(selectedItem == 0 ? Color.black : Color.gray)
                    Button("우리끼리대회") {
                        selectedItem = 1
                    }
                    .foregroundColor(selectedItem == 1 ? Color.black : Color.gray)
                    Button("대회정보") {
                        selectedItem = 2
                    }
                    .foregroundColor(selectedItem == 2 ? Color.black : Color.gray)
                }
                .foregroundColor(.gray)
                
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 1)
                    .foregroundColor(.gray)
                    .opacity(0.7)
                
                switch selectedItem {
                case 0:
                    ScrollView {
                        ForEach(contestItems, id: \.self) { item in
                            NavigationLink(destination: ContestDetailView(contestModel: item)) {
                                ContestCell(contestModel: item)
                            }
                        }
                    }
                    
                case 1:
                    Text("우리끼리대회")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                case 2:
                    Text("대회정보")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                default:
                    EmptyView()
                }
            }
            
            .navigationTitle("Contest")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button {
                    
                } label: {
                    Image(systemName: "cart")
                        .foregroundColor(.black)
                }
                
            }
            
        }
        
    }
}

struct ContestCell: View {
    
    let contestModel: ContestModel
    
    var body: some View {
        VStack {
            HStack {
                ZStack(alignment: .topLeading) {
                    Image(systemName: "person")
                        .resizable()
                        .scaledToFill()
                        .padding()
                        .background(.pink)
                        .cornerRadius(10)
                    
                    Text("D-54")
                        .padding(5)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(5)
                }
                .frame(maxWidth: 100, maxHeight: 100)
                
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "drop.fill")
                            .rotationEffect(.degrees(180))
                            .foregroundColor(.red)
                        Text("전국")
                            .foregroundColor(.black)
                    }
                    
                    Text("\(contestModel.title)")
                        .foregroundColor(.black)
                    Text("25,000원 ~")
                        .foregroundColor(.black)
                    HStack {
                        Image(systemName: "calendar")
                        Text("2023.05.13 - 2023.05.31")
                            .foregroundColor(.black)
                    }
                    
                    HStack {
                        Text("5.2")
                            .padding(2)
                            .background(.blue)
                            .cornerRadius(20)
                        Text("9.16")
                            .padding(2)
                            .background(.blue)
                            .cornerRadius(20)
                    }
                    .foregroundColor(.white)
                }
            }
            Rectangle()
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity, maxHeight: 1)
                .opacity(0.6)
        }
        
    }
}

struct ContestView_Previews: PreviewProvider {
    static var previews: some View {
        ContestView()
    }
}
