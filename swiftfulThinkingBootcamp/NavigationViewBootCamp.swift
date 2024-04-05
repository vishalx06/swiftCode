//
//  NavigationViewBootCamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 30/03/24.
//

import SwiftUI

struct NavigationViewBootCamp: View {
    var body: some View {
        
        NavigationView {
            ScrollView{
                NavigationLink("Animation Page", destination: MyOtherScreen())
                    .font(.headline)
                    .frame(width: 200, height: 100)
                    .background(Color.purple.cornerRadius(10))
                    .foregroundColor(.white)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                   
                    .padding(20)
                Text("Hello, users click above to enjoy animation")
               
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(
                leading: HStack {
                    Image(systemName: "person.fill")
                    Image(systemName: "flame.fill")
                },
                trailing: NavigationLink(destination: {
                    MyOtherScreen()
                }, label: {
                    Image(systemName: "gear")
                })
            )
        }
    }
}
struct MyOtherScreen: View {
    @State var isStartingState: Bool = false
    @Environment (\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
            Color.teal.opacity(0.3)
            Button("Back") {
                presentationMode.wrappedValue.dismiss()
            }
            
            VStack(spacing:30) {
                Button("Back") {
                    presentationMode.wrappedValue.dismiss()
                }
                Button("Shape toggler") {
                    withAnimation(
                        Animation.bouncy.repeatForever(autoreverses: true)) {
                        isStartingState.toggle()
                    }
                }
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .padding()
                .background(Color.primary)
                .cornerRadius(10)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                RoundedRectangle(cornerRadius: isStartingState ? 1 : 100)
                    .fill(isStartingState ? Color.green : Color.red)
                    .frame(width: isStartingState ? 100 : 200, height: isStartingState ? 100 : 200)
                    .rotationEffect(Angle(degrees: isStartingState ? 180 : 0))
                    .offset(y: isStartingState ?  200 : 0)
                    .navigationTitle("Animation Page")
//                    .navigationBarBackButtonHidden(true)
            
              
            NavigationLink("Next Page ->", destination: Text("3rd Page"))
                

            }
        }
        .ignoresSafeArea()
        
        
    }
}
#Preview {
    NavigationViewBootCamp()
}
