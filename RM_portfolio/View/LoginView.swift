//
//  LoginView.swift
//  RM_portfolio
//
//  Created by 황경원 on 2023/03/20.
//

import SwiftUI

struct LoginView: View {
    
    @Binding var pageStatus: PageStatus
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("RM")
                .fontWeight(.black)
                .font(.system(size: 70))
                
            VStack {
                TextField("Email", text: $email)
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
                    .foregroundColor(.black)
                
                TextField("Password", text: $password)
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
                    .foregroundColor(.black)
                
                Button(email.isEmpty && password.isEmpty ? "Sign in" : "Login"){
                    if email == "test" && password == "1234" {
                        pageStatus = .afterLogin
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(.blue)
                .cornerRadius(10)
                .padding(.top)
                
                HStack {
                    Button("Forgot Email"){
                        
                    }
                    .padding()
                    
                    Rectangle()
                        .frame(maxWidth: 1, maxHeight: 20)
                    
                    Button("Forgot Password"){
                        
                    }
                    .padding()
                    
                }
                Spacer()
                socialLoginBox
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        .background(.purple)
        .foregroundColor(.white)
    }
    
    var socialLoginBox: some View {
        
        VStack {
            HStack(spacing: 30) {
                Image(systemName: "person")
                    .padding()
                    .background(Color.white)
                    .clipShape(Circle())
                    .foregroundColor(.red)
                Image(systemName: "person.fill")
                    .padding()
                    .background(Color.green)
                    .clipShape(Circle())
                    .foregroundColor(.white)

                Image(systemName: "person.fill")
                    .padding()
                    .background(Color.yellow)
                    .clipShape(Circle())
                    .foregroundColor(.brown)

            }
            .padding()
            Button("Don't have an account? Sign in") {
                
            }
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(pageStatus: .constant(.afterAllow))
    }
}
