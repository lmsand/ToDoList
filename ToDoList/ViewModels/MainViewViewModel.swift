//
//  MainViewViewModel.swift
//  ToDoList
//
//  Created by lexi sanders on 12/20/23.
//

import Foundation
import FirebaseAuth

class MainViewViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async { // update view on main thread
                self?.currentUserId = user?.uid ?? ""  // published var triggered when user signs in or out
            }
        }
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil  // value for user, if nil, no user
    }
    
}
