//
//  imagesbootcamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 21/03/24.
//

import SwiftUI

struct imagesbootcamp: View {
    var body: some View {
        Image("google")
         // .renderingMode(.template)
            .resizable()
           // .scaledToFit()
        //    .aspectRatio(contentMode: .fit)
            .frame(width: 300, height:200)
            
//.cornerRadius(150)
           // .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    imagesbootcamp()
}
