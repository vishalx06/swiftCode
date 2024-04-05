//
//  ListBootCamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 31/03/24.
//

import SwiftUI

struct ListBootCamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    @State var Vegetables: [String] = [
        "potato", "tomato", "brocli", "peas"
    ]
    
    @State var showingSection1 = true
     @State var showingSection2 = true
    
    var body: some View {
        NavigationView {
            List{
                Section(
                    header: Text("Fruits") ) {
                        ForEach(fruits, id: \.self){
                            fruit in Text(fruit.capitalized)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                    }
                
                Section(
                    header: Text("Vegetables")){
                        ForEach(Vegetables, id: \.self){
                            fruit in Text(fruit.capitalized)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                    }
            }
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(),trailing: addButton)
        }
        
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indexSet: IndexSet, newOffset: Int){
        fruits.move(fromOffsets: indexSet, toOffset: newOffset)
    }
    
    func add(){
        fruits.append("Strawberry")
    }
    
}

#Preview {
    ListBootCamp()
}
