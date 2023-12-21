//
//  LoginView.swift
//  ToDoList
//
//  Created by lexi sanders on 12/20/23.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // header
                HeaderView(title: "To do list", subtitle: "Get things done", angle: 15, background: Color.pink)
                
                // login form
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button {
                        // attempt login
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundStyle(Color.blue)
                            
                            Text("Log In")
                                .foregroundStyle(.white)
                                .bold()
                        }
                    }
                    .padding()
                }
                .offset(y: -50)
                
                
                // create account
                VStack {
                    Text("New around here?")
                    
                    NavigationLink("Create an account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
