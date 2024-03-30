//
//  BackgroundAndOverlayBootcamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 22/03/24.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .frame(width: 200, height: 200)
//            .background(
//               Rectangle()
//                    .fill(Color.blue)
//            )
//            .frame(width: 300, height:300, alignment: .center)
//            .background(
//                Rectangle()
//                    .fill(Color.pink)
//            )
        Circle()
            .fill(Color.orange)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            .overlay(
                Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            )
            .background(
                Circle()
                    .fill(Color.pink)
                    .frame(width: 150, height: 150)
            )
            
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
