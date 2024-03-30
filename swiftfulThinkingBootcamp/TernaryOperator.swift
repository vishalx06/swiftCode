//
//  TernaryOperator.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 30/03/24.
//

import SwiftUI

struct TernaryOperator: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack(spacing:20) {
           
            Button("Shape toggler") {
                isStartingState.toggle()
            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .padding()
            .background(Color.primary)
            .cornerRadius(10)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
             
            RoundedRectangle(cornerRadius: isStartingState ? /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/ : 100)
                .fill(isStartingState ? Color.green : Color.red)
                .frame(width: isStartingState ? 100 : 200, height: isStartingState ? 100 : 200)
                
            Spacer()

        }
    }
}

#Preview {
    TernaryOperator()
}
