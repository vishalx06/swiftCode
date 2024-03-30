//
//  AnimationBootCamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 30/03/24.
//

import SwiftUI

struct AnimationBootCamp: View {
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack(spacing:20) {
           
            Button("Shape toggler") {
                withAnimation(
                    Animation.bouncy.repeatForever(autoreverses: true)) {
                    isStartingState.toggle()
                }
            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .padding()
            .background(Color.primary)
            .cornerRadius(10)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isStartingState ? 1 : 100)
                .fill(isStartingState ? Color.green : Color.red)
                .frame(width: isStartingState ? 100 : 200, height: isStartingState ? 100 : 200)
                .rotationEffect(Angle(degrees: isStartingState ? 180 : 0))
                .offset(y: isStartingState ?  200 : 0)
               
                
          Spacer()

        }
    }
}

#Preview {
    AnimationBootCamp()
}
