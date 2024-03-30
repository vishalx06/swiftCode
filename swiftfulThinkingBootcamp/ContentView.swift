//
//  ContentView.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 20/03/24.
//
import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack(spacing: 20) {
      Text("SwiftUI Button")
        .font(.largeTitle)
      Text("Examples")
        .font(.title2)
        .foregroundColor(.gray)
      
      /* Default Button */
      Button("I'm a Default Button") {
        // Your code here
      }
      
      /* Customizing the Text */
      Button(action: {
        // Your code here
      }) {
        Text("Custom text style")
          .font(.title)
      }
      
      Button(action: {
        // Your code here
      }) {
        Text("Red thin text")
          .font(.title)
          .fontWeight(.thin)
          .foregroundColor(.red)
      }
    }
  }
}
#Preview {
    ContentView()
}
