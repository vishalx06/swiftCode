//
//  StateBootCamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 29/03/24.
//

import SwiftUI

struct StateBootCamp: View {
    
    @State var title: String = "This is a title"
    @State var bgColor: Color = Color.green
    @State var count: Int = 0
    
    var body: some View {
        
        ZStack {
            // background
            bgColor
                .ignoresSafeArea()
            
            // content
            VStack(spacing: 30, content: {
                Text(title)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                Text("Count:  \(count)")
                    .font(.headline)
                    .underline()
                    
                HStack{
                    Button("BUTTON 1") {
                       changeWithButton1()
                    }
                    .foregroundColor(.gray)
                    .font(.headline)
                    .frame(width: 100, height: 25)
                    .padding(20)
                    .background(Color.white
                        .cornerRadius(20))
                    
                    Button("BUTTON 2") {
                        changeWithButton2()
                    }
                    .foregroundColor(.gray)
                    .font(.headline)
                    .frame(width: 100, height: 25)
                    .padding(20)
                    .background(Color.white
                        .cornerRadius(20))
                }
                
            })
            .foregroundColor(.white)
            
        }
    }
    
    func changeWithButton1() {
        title = "BUTTON #1"
        bgColor = Color.pink
        count = count+1
    }
    
    func changeWithButton2() {
        title = "BUTTON #2"
        bgColor = Color.purple
        count = count-1
    }
        
}

#Preview {
    StateBootCamp()
}
