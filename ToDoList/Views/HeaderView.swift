//
//  HeaderView.swift
//  ToDoList
//
//  Created by lexi sanders on 12/21/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(Color.pink)
                .rotationEffect(Angle(degrees: 15))
            
            VStack {
                Text("To do list")
                    .font(.system(size: 50))
                    .foregroundStyle(.white)
                    .bold()
                
                Text("Get things done")
                    .font(.system(size: 30))
                    .foregroundStyle(.white)
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 300)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
