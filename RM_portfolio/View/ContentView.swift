//
//  ContentView.swift
//  RM_portfolio
//
//  Created by 황경원 on 2023/03/20.
//

import SwiftUI

enum PageStatus {
    case beforeAllow
    case afterAllow
    case afterLogin
}

struct ContentView: View {
    @State var pageStatus: PageStatus = .beforeAllow
    
    var body: some View {
        
        switch pageStatus {
        case .beforeAllow :
            LandingView(pageStatus: $pageStatus)
        case .afterAllow :
            LoginView(pageStatus: $pageStatus)
        case .afterLogin :
            MainView()
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
