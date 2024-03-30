//
//  ForEachBootcamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 26/03/24.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hello", "Hi There!", "How are you?"]
    let myString: String = "Hello"
    
    var body: some View {
        
        VStack{
            
            ForEach(data.indices) { index in
                Text("Item Number \(index) : \(data[index])")
                
            }
            
            
        }
        
    }
}

#Preview {
    ForEachBootcamp()
}
