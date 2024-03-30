//
//  Stacks.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 23/03/24.
//

import SwiftUI

struct Stacks: View {
        // Vstacks -> Vertical
        // Hstacks -> Horizontal
        // Zstacks -> ZIndex ( back to front)
    var body: some View {
        VStack{
            
            ZStack{
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                Circle()
                .frame(width: 100,height: 100)
            )
            
            
        }
    }
}

#Preview {
    Stacks()
}
