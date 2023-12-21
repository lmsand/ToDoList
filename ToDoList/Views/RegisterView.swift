//
//  RegisterView.swift
//  ToDoList
//
//  Created by lexi sanders on 12/20/23.
//

import SwiftUI

struct RegisterView: View {
    
    @State var fullname = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            // header view
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: Color.orange)
            
            Form {
                TextField("Fullname", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create Account", background: .green) {
                    // attempt registration
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
