//
//  Background overlays.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 23/03/24.
//

import SwiftUI

struct Background_overlays: View {
    var body: some View {
       Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.orange, Color.yellow]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                        )
                    .frame(width: 100, height: 100)
                    .shadow(color: .red, radius: 10, x: 0.0, y:10.0)
                    .overlay(
                        Circle()
                            .fill(Color.red)
                            .frame(width: 35,height: 35)
                            .overlay(
                                Text("2")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: .red, radius: 10, x: 5.0, y:5.0),
                        alignment: .bottomTrailing
                    )
                )
    }
}

#Preview {
    Background_overlays()
}
