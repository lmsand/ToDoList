//
//  RegisterView.swift
//  ToDoList
//
//  Created by lexi sanders on 12/20/23.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            // header view
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: Color.orange)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
