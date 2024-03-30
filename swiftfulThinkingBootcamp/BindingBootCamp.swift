//
//  BindingBootCamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 29/03/24.
//

import SwiftUI

struct BindingBootCamp: View {
    
    @State var bgColor: Color = Color.primary
    @State var title: String = "This is Default Title"
    
    var body: some View {
        ZStack {
            bgColor
                .opacity(0.4)
                .ignoresSafeArea()
            
            ExtractedView(bgColor: $bgColor, title: $title)
        }
    }
}

#Preview {
    BindingBootCamp()
}

struct ExtractedView: View {
    
    @Binding var bgColor: Color
    @Binding var title: String
    @State var buttonName: String = "Press Me"
    @State var buttonBgColor: Color = Color.white
    @State var progess: Bool = false
    
    var body: some View {
        VStack(spacing:20) {
            Text(title)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Button(buttonName) {
                bgColor = Color.pink
                title = "This is new Title"
                buttonName = "Pressed!!"
                buttonBgColor = Color.pink
                progess = true
            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundColor(.primary)
            .padding()
            .background(buttonBgColor)
            .cornerRadius(10)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            if progess {
                ProgressView()
                    .controlSize(.large)
            }
        }
    }
}
