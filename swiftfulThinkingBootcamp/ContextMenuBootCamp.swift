//
//  ContextMenuBootCamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 03/04/24.
//

import SwiftUI

struct ContextMenuBootCamp: View {
    
    @State var bgCustomColor = Color.pink
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "house.fill")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("Housing World!")
                .font(.title)
            Text("Press & Hold to select the bg color")
                .font(.headline)
        }
        .padding(30)
        .background(bgCustomColor
            .cornerRadius(30))
        .foregroundColor(.white)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        .contextMenu(menuItems: {
            Button(action: {
                bgCustomColor = .blue.opacity(0.5)
            }, label: {
                HStack {
                    Text("Like")
                    Image(systemName: "heart.fill")
                }
            })
            Button(action: {
                bgCustomColor = .green.opacity(0.5)
            }, label: {
                HStack {
                    Text("Pin your location")
                    Image(systemName: "mappin")
                }
            })
            Button(action: {
                bgCustomColor = .orange.opacity(0.5)
            }, label: {
                HStack {
                    Text("NOT FELLING WELL")
                    Image(systemName: "pills.fill")
                }
            })
        })
    }
}

#Preview {
    ContextMenuBootCamp()
}
