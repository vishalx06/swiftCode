//
//  initializerbootcamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 24/03/24.
//

import SwiftUI

struct initializerbootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
             self.title = "Apples"
             self.backgroundColor = .red
        }else if fruit == .grapes {
            self.title = "Grapes"
            self.backgroundColor = .green
        }else if fruit == .banana {
            self.title = "banana"
            self.backgroundColor = .yellow
        } else{
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit{
        case apple
        case oranges
        case grapes
        case banana
    }
    
    var body: some View {
        VStack (spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    VStack {
        HStack {
            initializerbootcamp (count: 5, fruit:.oranges)
            
            initializerbootcamp (count: 45, fruit:.apple)
            
        }
        Spacer()
        initializerbootcamp (count: 10, fruit:.oranges)
        Spacer()
        HStack{
            initializerbootcamp (count: 55, fruit:.grapes)
            
            initializerbootcamp (count: 50, fruit: .banana)
            
            
        }
    
      
        HStack {
            
         //   initializerbootcamp (count: 10, fruit:.oranges)
            
        //    initializerbootcamp (count: 100, fruit:.apple)
        }
        
    }
}


