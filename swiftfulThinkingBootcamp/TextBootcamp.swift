//
//  TextBootcamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 20/03/24.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!".capitalized)
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .italic()
//            .strikethrough()
//            .strikethrough(true, color: Color.orange)
//            .font(.system(size: 24, weight: .semibold, design: .serif))
//            .baselineOffset(50)
//            .kerning(10)
//            .foregroundColor(.orange)
//            .multilineTextAlignment(.leading)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
        
        
        
            
    }
}

#Preview {
    TextBootcamp()
}
