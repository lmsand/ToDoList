//
//  MainView.swift
//  ToDoList
//
//  Created by lexi sanders on 12/20/23.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            // signed in
            ToDoListView()
        } else {
            LoginView()
        }
            
    }
}

#Preview {
    MainView()
}
