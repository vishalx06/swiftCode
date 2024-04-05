//
//  Buttonsbootcamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 05/04/24.
//

import SwiftUI

struct Buttonsbootcamp: View {
    
   @State var title: String = "This is my title"
    
    var body: some View {
        VStack (spacing :20){
            Text(title)
            
          Button("press me!") {
              self.title = "BUTTON WAS PRESSED"
                 
            }
          .accentColor(.red)
            Button(action: {
                self.title = "Button #2 was pressed"
            }, label: {
                Text("Save" .uppercased())
                    .font(.headline)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding()
                    .padding(.horizontal, 20)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                
                
            })
            
            Button(action:  {
                self.title = "Button #3"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width :75, height:75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red )
                    )
            })
            
            
                   Button(action: {
                       self.title = "Button #4"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color .gray, lineWidth: 2.0)
                        )
                    
                
                
                
            })
            
            
            
            
        }
   }
}

#Preview {
    Buttonsbootcamp()
}
