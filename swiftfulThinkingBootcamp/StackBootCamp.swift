//
//  StackBootCamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 23/03/24.
//

import SwiftUI

struct StackBootCamp: View {
    var body: some View {
//        HStack(
//            alignment: .bottom,
//            spacing: nil,
//            content: {
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150,height: 150)
//                
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 125,height: 125)
//                
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 100,height: 100)
//        })
        
        ZStack(alignment: .top){
            Rectangle()
                .fill(Color.orange)
                .frame(width: 350, height: 500, alignment: .center)
            VStack(alignment: .leading, spacing: 30){
                Rectangle()
                    .fill(Color.primary)
                    .frame(width: 150, height: 150)
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: 100, height: 100)
                HStack(alignment: .lastTextBaseline, spacing: 30){
                    Rectangle()
                        .fill(Color.primary)
                        .frame(width: 50, height: 50)
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 70, height: 70)
                    Rectangle()
                        .fill(Color.primary)
                        .frame(width: 25, height: 25)
                }
                .background(Color.green)
                
            }
            .background(Color.yellow)
        }
        
    }
}

#Preview {
    StackBootCamp()
}
