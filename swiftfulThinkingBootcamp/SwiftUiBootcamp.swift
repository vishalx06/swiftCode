//
//  SwiftUiBootcamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 20/03/24.
//

import SwiftUI

struct SwiftUiBootcamp: View {
    var body: some View {
        Text("hello world").textCase(.lowercase)
          //  .font(.body)
            //.fontWeight(.semibold)
            //.bold()
            //.underline()
//            .underline(true, color: Color.red)
//            .italic()
//            //.strikethrough()
//            .strikethrough(true, color: Color.green)
          //  .font(.system(size:24, weight: .semibold, design: .serif))
            //.baselineOffset(-50.0)
            //.kerning(10)
            .multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width: 200, height: 100, alignment: .center)
            .minimumScaleFactor(0.1)
    }
}

#Preview {
    SwiftUiBootcamp()
}
