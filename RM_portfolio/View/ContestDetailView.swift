//
//  ContestDetailView.swift
//  RM_portfolio
//
//  Created by 황경원 on 2023/03/20.
//

import SwiftUI

struct ContestDetailView: View {
    
    let contestModel: ContestModel
    
    var body: some View {
        VStack {
            ZStack(alignment: .topLeading) {
                
                Image(systemName: "person")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                
                Text("D-54")
                    .padding(3)
                    .background(.blue)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: 300)
            .background(.yellow)
            
            VStack {
                Text("\(contestModel.title)")
                HStack {
                    Image("calendar")
                    Text("0000.00.00 ~ 0000.00.00")
                }
                
                Spacer()
                
                HStack {
                    Button("Pay"){
                        
                    }
                    .frame(width: 100)
                    Button("Join"){
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.blue)
                    .foregroundColor(.white)
                }
                .frame(maxHeight: 80)
                .fontWeight(.heavy)
            }
            .background(.white)
            .cornerRadius(10)
        }
    }
}

struct ContestDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContestDetailView(contestModel: ContestModel(title: "2023 B급 마라톤 - 꿀벌런", startDate: Date(), endDate: Date()))
    }
}
