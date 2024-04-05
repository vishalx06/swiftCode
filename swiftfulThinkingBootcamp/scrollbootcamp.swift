//
//  scrollbootcamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 04/04/24.
//

import SwiftUI

struct scrollbootcamp: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack{
                            ForEach(0..<20) {index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.orange)
                                    .frame(width: 150, height: 150)
                                    .shadow(radius: 10)
                                    . padding()
                                
                            }
                           
                        }
                    })
                   
                }
                
            }
        }
    }
}

#Preview {
    scrollbootcamp()
}
