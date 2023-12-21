//
//  RegisterViewViewModel.swift
//  ToDoList
//
//  Created by lexi sanders on 12/20/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class RegisterViewViewModel: ObservableObject {
    @Published var fullname = ""
    @Published var email = ""
    @Published var password = ""
    
    init() {
        
    }
    
    func register() {
        guard validate() else {
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            guard let userID = result?.user.uid else {
                return
            }
            
            self?.insertUserRecord(id: userID)
        }
        
        
    }
    
    private func insertUserRecord(id: String) {
        let newUser = User(id: id,
                           name: fullname,
                           email: email,
                           joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
    }
    
    private func validate() -> Bool {
        guard !fullname.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            // if email is filled in and password is filled in, continue, else error
            
            return false
        }
        
        // email@foo.com
        guard email.contains("@") && email.contains(".") else {
            return false
        }
        
        guard password.count >= 6 else { return false }
        
        return true
    }
}
