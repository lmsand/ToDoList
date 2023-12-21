//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by lexi sanders on 12/20/23.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    init() {
        
    }
}
