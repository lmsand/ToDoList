//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by lexi sanders on 12/20/23.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
