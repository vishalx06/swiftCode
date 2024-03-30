//
//  GridBootCamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 26/03/24.
//

import SwiftUI

struct GridBootCamp: View {
    
        let columns:[GridItem] = [
            GridItem(.flexible(), spacing: 6, alignment: nil),
            GridItem(.flexible(), spacing: 6, alignment: nil),
            GridItem(.flexible(), spacing: 6, alignment: nil)
            
        ]
    
    var body: some View {
        
        ScrollView{
            
            RoundedRectangle(cornerRadius: 50.0)
                .fill(Color.pink)
                .frame(width: 400, height: 300)
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders],
                      content: {
                Section(header: 
                            Text("Section 1")
                                .foregroundColor(.white)
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                                .background(Color.primary)
                        
                    
                ){
                    ForEach(0..<30){
                        index in
                        RoundedRectangle(cornerRadius: 50.0)
                            .fill(Color.gray)
                            .frame(height: 150)
                        }
                }
                
                Section(header:
                            Text("Section 2")
                                .foregroundColor(.white)
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                                .background(Color.primary)
                    
                ){
                    ForEach(0..<30){
                        index in
                        RoundedRectangle(cornerRadius: 50.0)
                            .fill(Color.primary)
                            .frame(height: 150)
                        }
                }
                            
                    })
        }
        
    }
}

#Preview {
    GridBootCamp()
}
