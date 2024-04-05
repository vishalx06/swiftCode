//
//  enumsbootcamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 03/04/24.
//

import SwiftUI

struct enumsbootcamp: View {
    
    let backgroundcolor: Color
    let count : Int
    let title : String
    
    var body: some View {
        VStack (spacing:10) {
          Text("\(count)")
                .font(.title)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.title)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundcolor)
        .cornerRadius(10.0)
        
    }
}

#Preview {
    enumsbootcamp(backgroundcolor:.orange, count: 15, title: "peaches")
}
