//
//  ScrollViewBootCamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 26/03/24.
//

import SwiftUI

struct ScrollViewBootCamp: View {
    var body: some View {
        ScrollView(.vertical,showsIndicators: true, content: {
            LazyVStack{
                ForEach(0..<10){ index in
                    ScrollView(.horizontal,showsIndicators: false,content: {
                        LazyHStack(content: {
                            ForEach(0..<20){ index in
                                RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/)
                                    .fill(Color.gray)
                                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                    .padding()
                                    .frame(width: 200,height: 150)
                            }
                        })
                    })
                    
                }
            }
        })
            
        
    }
}

#Preview {
    ScrollViewBootCamp()
}
