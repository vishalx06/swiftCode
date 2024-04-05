//
//  ActionSheet.swift
//  swiftfulThinkingBootcamp
//
//  Created by Vishal Sharma on 03/04/24.
//

import SwiftUI

struct ActionSheetBootCamp: View {
    
    @State var showActionSheet : Bool = false
    @State var actionSheetOption : ActionSheetOptions = .isOtherPost
        
        enum ActionSheetOptions {
            case isMyPost
            case isOtherPost
        }
    
    var body: some View {
            VStack{
                HStack{
                    Circle()
                        .frame(width: 50, height: 50)
                    Text("@user.name")
                    Spacer()
                    Button(action: {
                        actionSheetOption = .isOtherPost
                        showActionSheet.toggle()
                    }, label: {
                        Image(systemName: "ellipsis")
                    })
                    .accentColor(.primary)
                }
                .padding()
                Rectangle().frame(width: 400, height: 400)
            }
            .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
//        Button ("Click Me"){
//            showActionSheet.toggle()
//        }
//        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }

    func getActionSheet() -> ActionSheet {
        
        let shareButton : ActionSheet.Button = .default(Text("Share")){
            // add code to share post
        }
        let reportButton : ActionSheet.Button = .destructive(Text("Report")){
            // add code to Report post
        }
        let deleteButton : ActionSheet.Button = .default(Text("Delete")){
            // add code to Delete post
        }
        let cancelButton : ActionSheet.Button = .cancel()
        let title = Text("what would you like to do?")
        
        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, deleteButton, cancelButton]
            )
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, cancelButton]
            )
        }
        
        
//        return  ActionSheet(title: Text("Hii"))
        
//        let button1 : ActionSheet.Button = .default(Text("Default"))
//        let button2 : ActionSheet.Button = .destructive(Text("Destructive"))
//        let button3 : ActionSheet.Button = .cancel()
//        return ActionSheet(
//            title: Text("This is the title"),
//            message:Text("This is the message"),
//            buttons: [button1, button2, button3]
//        )

    }
    
}

#Preview {
    ActionSheetBootCamp()
}
