//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by lexi sanders on 12/20/23.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {
        
    }
    
    func login() {
        guard validate() else { return }
        
        // try login
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            // if email is filled in and password is filled in, continue, else error
            errorMessage = "Please fill in all fields"
            
            return false
        }
        
        // email@foo.com
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter valid email"
            return false
        }
        
        return true
    }
}
