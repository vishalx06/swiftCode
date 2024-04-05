//
//  AlertsBootCamp.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 02/04/24.
//

import SwiftUI

struct AlertsBootCamp: View {
    
    @State var showAlert : Bool = false
    @State var bgColor : Color = Color.black
//    @State var alertTitle : String = ""
//    @State var alertMessage : String = ""
    @State var myalert : MyAlerts? = nil
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        
        ZStack {
            bgColor
                .ignoresSafeArea()
            
            VStack {
                Button("Click here"){
//                    alertTitle = "ERROR UPLOADING VIDEO"
//                    alertMessage = "the video could not be uploaded 🥺"
                    myalert = .error
                    showAlert.toggle()
                }
                
                Button("Click here"){
//                    alertTitle = "VIDEO UPLOADED "
//                    alertMessage = "the video is uploaded 🥳"
                    myalert = .success
                    showAlert.toggle()
                }
            }
        }
        .alert(isPresented: $showAlert, content: {
            getAlert()
        })
    }
    
    
    func getAlert() -> Alert{
        
        switch myalert {
        case .error:
            return Alert(title: Text("This is for the error! 🫣"))
        case .success:
            return Alert(title: Text("This for the success 🤓"),
                         message: nil,
                         dismissButton: .default(Text("OK"),
                        action: {
                            bgColor = .green
                        }))
        default:
            return Alert(title: Text("Error!"))
        }
        
//        return Alert (
//            title: Text(alertTitle),
//                      message: Text(alertMessage),
//            dismissButton: .default(Text("OK")))
        
        
//        return   Alert(
//            title: Text("this is a title"),
//            primaryButton: .destructive(Text("DELETE"),action: {
//                bgColor = .white
//            }),
//            secondaryButton: .cancel())
        //            Alert(title: Text("This was an error"))
    }
}
#Preview {
    AlertsBootCamp()
}
