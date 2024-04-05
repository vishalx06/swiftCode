//
//  TextfieldBootCamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 03/04/24.
//

import SwiftUI

struct TextfieldBootCamp: View {
    
    @State var typingField : String = ""
    @State var dataArray : [String] = []
    
    var body: some View {
        
        NavigationView{
                VStack {
                    
                    TextField("Type something here...", text: $typingField)
                        .padding()
                        .background(Color.gray.opacity(0.3).cornerRadius(10))
                        .foregroundColor(.primary)
                        .font(.headline)
                    
                    Button(action: {
                        if(textSizeCheck()){
                            saveData()
                        }
                    }, label: {
                        Text("save".uppercased())
                            .fontWeight(.bold)
                            .padding()
                            .foregroundColor(.white)
                            .font(.subheadline)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .background(textSizeCheck() ? Color.blue : Color.gray )
                            .cornerRadius(20)
                    })
                    .disabled(!textSizeCheck())
                    
                    ForEach(dataArray, id: \.self) { data in
                        Text(data)
                    }
                    Spacer()
                }
                .padding(20)
                .navigationTitle("TextField Bootcamp!!")
        }
    }
    func textSizeCheck() -> Bool {
        return typingField.count >= 3
    }
    
    func saveData() {
        dataArray.append(typingField)
        typingField = ""
    }
    
}

#Preview {
    TextfieldBootCamp()
}
