//
//  RegisterView.swift
//  ToDoList
//
//  Created by lexi sanders on 12/20/23.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            // header view
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: Color.orange)
            
            Form {
                TextField("Fullname", text: $viewModel.fullname)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create Account", background: .green) {
                    // attempt registration
                    viewModel.register()
                }
                .padding()
            }
            .offset(y: -50)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
