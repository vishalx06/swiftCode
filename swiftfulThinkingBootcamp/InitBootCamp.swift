//
//  InitBootCamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 24/03/24.
//

import SwiftUI

struct InitBootCamp: View {

let backGroundColor: Color
let numberOfFruits : Int
let typeOfFruit: String

init(backGroundColor: Color, numberOfFruits : Int,typeOfFruit: String ){
    self.backGroundColor = backGroundColor
    self.numberOfFruits = numberOfFruits
    self.typeOfFruit = typeOfFruit
}


    var body: some View {
        VStack{
            Text("\(numberOfFruits)")
                .font(.largeTitle)
                .underline()
                .padding(5)
            
            Text(typeOfFruit)
                .font(.headline)
                .padding(5)
        }
        .foregroundColor(.white)
        .frame(width: 150, height: 150)
        .background(backGroundColor)
        .cornerRadius(10)
        .shadow(color: .black, radius: 5)
    }
}

#Preview {
    InitBootCamp(backGroundColor: .orange, numberOfFruits: 40, typeOfFruit: "Orange")
}
