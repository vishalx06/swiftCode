//
//  ColorPickerBootCamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 05/04/24.
//

import SwiftUI

struct ColorPickerBootCamp: View {
    
    @State var bgColor : Color = .gray
    
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea()
            
            ColorPicker("Select your favourite color",
                        selection: $bgColor,
                        supportsOpacity: true
            )
            .font(.headline)
            .padding(50)
            .background()
            .cornerRadius(25)
            .padding(10)
        }
    }
}

#Preview {
    ColorPickerBootCamp()
}
