//
//  spacing bootcamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 24/03/24.
//

import SwiftUI

struct spacing_bootcamp: View {
    var body: some View {
        VStack {
            HStack (spacing: 0)   {
                
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
                Image(systemName: "gear")
                
                
            }
            .font(.title)
           // .background(Color.yellow)
            .padding(.horizontal)
            //.background(Color.blue)
            
            Spacer()
                .frame(width: 10)
                .background(Color.orange)
        }
//.background(Color.yellow)
    }
}

#Preview {
    spacing_bootcamp()
}
