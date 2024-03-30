//
//  SheetsBootCamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 30/03/24.
//

import SwiftUI

struct SheetsBootCamp: View {
    
    @State var showSheet : Bool = false
    
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            Button("Press Me!!".capitalized){
                showSheet.toggle()
            }
            .font(.headline)
            .padding(20)
            .foregroundColor(Color.primary)
            .background(Color.white
                .cornerRadius(10))
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .sheet(isPresented: $showSheet, content: {
                SecondScreen()
            })
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
        }
    }
}

struct SecondScreen : View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment:.topLeading){
            Color.primary
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
            
            
        }
        .ignoresSafeArea()
    }
}

    #Preview {
    SheetsBootCamp()
}
