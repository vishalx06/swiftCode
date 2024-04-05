//
//  PickerBootcamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 05/04/24.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
    "Most Recent", "Most Liked", "Most Popular"
    ]
    
    var body: some View {
        
        VStack{
            
            Picker(selection: $selection,
                label:
                    Text("Filter: \(selection)")
                    .font(.headline)
                    .padding()
                    .padding(.horizontal)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(20)
                ,
                content: {
                    
                    ForEach(filterOptions, id: \.self) { option in
                            Text(option)
                            .tag(option)
                    }
                })
            .pickerStyle(MenuPickerStyle())
        }
        
        
//        VStack{
//            
//            HStack{
//                    Text("Age: \(selection)")
//            }
//            
//            
//            Picker(
//                selection: $selection,
//                label: Text("Picker"),
//                content: {
//                    ForEach(18..<100) { number in
//                        Text("\(number)")
//                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
//                            .foregroundStyle(Color.purple)
//                            .tag("\(number)")
//                        
//                    }
//                })
//            .pickerStyle(WheelPickerStyle())
//        }
        
        
        
//        VStack {
//            HStack{
//                Text("Age: \(selection)")
//            }
//            
//            Picker(
//            selection: $selection,
//            label: Text("Picker"),
//            content: {
//                Text("1").tag("1")
//                Text("2").tag("2")
//                Text("3").tag("3")
//                Text("4").tag("4")
//                Text("5").tag("5")
//            }
//        )
//            .pickerStyle(WheelPickerStyle())
//        }
        
    }
}

#Preview {
    PickerBootcamp()
}
