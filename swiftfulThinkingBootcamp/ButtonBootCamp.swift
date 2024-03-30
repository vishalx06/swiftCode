//
//  ButtonBootCamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 28/03/24.
//

import SwiftUI

struct ButtonBootCamp: View {

    @State var title: String = "This is a title"

    var body: some View {
        VStack(spacing: 20, content: {
            
            Text(title)
            
            Button("Press Me!") {
                self.title = "Button was pressed"
            }
            .accentColor(.red)
            
            Button(action: {
                self.title = "Button #2 was presed"
            }, label: {
                Text("save".uppercased())
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.orange
                        .cornerRadius(10)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/))
            })
            
            Button(action: {
                self.title = "Button #3 was pressed"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 100,height: 100)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay(
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundColor(.pink)
                    )
            })
            
            Button(action: {
                self.title = "Button #4 was pressed"
            }, label: {
                Text("Finish".uppercased())
                    .font(.headline)
                    .bold()
                    .foregroundColor(.gray)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                    Capsule()
                        .stroke(Color.gray, lineWidth: 2.0)
                    )
                    
            })
            
        })
        }
    }


#Preview {
    ButtonBootCamp()
}
