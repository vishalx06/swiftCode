//
//  ShapesBootCamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 20/03/24.
//

import SwiftUI

struct ShapesBootCamp: View {
    var body: some View {
      //  Circle()
       // Ellipse()
       // Capsule(style: .circular)
        //Rectangle()
        RoundedRectangle(cornerRadius: 10)
         //  .fill(Color.pink)
            //.foregroundColor(.pink)
            //.stroke()
           // .stroke(Color.red)
          // .stroke(Color.blue, lineWidth: 30)
          //  .stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
         .trim(from:0.2, to: 1.0)
          //  .stroke(Color.purple, lineWidth:50)
           .frame(width:200, height: 100)
    }
}

        
        

#Preview {
    ShapesBootCamp()
}
