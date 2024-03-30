//
//  colorbootcamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 21/03/24.
//

import SwiftUI

struct colorbootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
               // Color.primary
              //  Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: //0.8549019694, alpha: 1))
               // Color(UIColor.secondarySystemBackground)
                Color("CustomColor")

            )
            .frame(width: 300, height: 200)
            .shadow(color: Color.red, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    colorbootcamp()
}
