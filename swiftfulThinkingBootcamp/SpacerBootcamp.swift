//
//  SpacerBootcamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 23/03/24.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
//        HStack(spacing: 0){
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//            
//            Rectangle()
//                .frame(width: 50, height: 50)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//            
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 50, height: 50)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//            
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 50, height: 50)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//                
//        }
//        .background(Color.blue)
        VStack {
            HStack{
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .background(
                        Circle()
                            .fill(Color.green)
                            .frame(width: 50, height: 50)
                    )
                Spacer()
                
                Image(systemName: "heart")
                    .foregroundColor(.white)
                    .background(
                        Circle()
                            .fill(Color.red)
                            .frame(width: 50, height: 50)
                    )
            }
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding(20)
            Spacer()
            Rectangle()
                .frame(height: 50)
        }
    }
}

#Preview {
    SpacerBootcamp()
}
