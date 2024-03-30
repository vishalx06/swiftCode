//
//  ExtractSubViewBootCamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 29/03/24.
//

import SwiftUI

struct ExtractSubViewBootCamp: View {
    var body: some View {
        ZStack {
            Color.teal.opacity(0.3)
                .ignoresSafeArea()
            
            HStack {
                MyItem(title: "Apples", count: 100, bgColor: .red)
                MyItem(title: "Bananas", count: 120, bgColor: .yellow)
                MyItem(title: "Berries", count: 300, bgColor: .purple)
            }
            
        }
    }
}
#Preview {
    ExtractSubViewBootCamp()
}

    struct MyItem: View {
       
        let title: String
        let count: Int
        let bgColor: Color
        
        var body: some View {
            
            VStack{
                Text("\(count)")
                    .font(.title)
                Text(title.uppercased())
                    .font(.callout)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }.padding()
                .foregroundColor(.white)
                .background(bgColor
                    .cornerRadius(20))
        }
    }
