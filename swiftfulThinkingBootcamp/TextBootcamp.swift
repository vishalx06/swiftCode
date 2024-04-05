//
//  TextBootcamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 20/03/24.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! This is the swiftful thinking bootcamp.I am really enjoying this course.I am really enjoying this course")
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .underline(true, color: Color.red)
//            .italic()
//            .strikethrough(true, color: Color.blue)
           // .font(.system(size: 60, weight: .semibold, design: .serif))
            .multilineTextAlignment(.trailing)
            .foregroundColor(.red)
            .frame(width: 200, height: 200, alignment: .center)
        
   }
}
#Preview {
    TextBootcamp()
}
