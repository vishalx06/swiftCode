//
//  TransitionBootCamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 30/03/24.
//

import SwiftUI

struct TransitionBootCamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment:.bottom){
            
            VStack{
                Button("Button"){
                    withAnimation(Animation.spring) {
                        showView.toggle()
                    }
                }
                .padding(60)
                Spacer()
            }
            if(showView == true){
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.move(edge: .bottom))
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    TransitionBootCamp()
}
