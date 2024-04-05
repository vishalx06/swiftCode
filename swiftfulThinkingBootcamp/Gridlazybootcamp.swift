//
//  Gridlazybootcamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 04/04/24.
//

import SwiftUI

struct Gridlazybootcamp: View {
    let columns: [GridItem] =  [
        GridItem(.flexible(),spacing:6, alignment: nil ),
        GridItem(.flexible(),spacing:6, alignment: nil ),
        GridItem(.flexible(),spacing:6, alignment: nil ),
        
    ]
    var body: some View {
        ScrollView{
            Rectangle()
                .frame(height: 400)
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header:
                                Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .background(Color.black)
                        .padding()
                    ) {
                        ForEach(0..<50) {index in
                            Rectangle()
                                .fill(Color.yellow)
                                .frame(height: 150)
                        }
                        
                    }
                    
                    Section(header:
                                Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .background(Color.black)
                        .padding()
                    ) {
                        ForEach(0..<50) {index in
                            Rectangle()
                                .fill(Color.red)
                                .frame(height: 150)
                        }
                        
                    }
                    
                    Section(header:
                                Text("Section 3")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .background(Color.black)
                        .padding()
                    ) {
                        ForEach(0..<50) {index in
                            Rectangle()
                                .fill(Color.purple)
                                .frame(height: 150)
                        }
                        
                    }
                    
                  
                  
                })
            
        }
    }
}
    


#Preview {
    Gridlazybootcamp()
}


