//
//  ActionSheetB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 08/05/24.
//

import SwiftUI

struct ActionSheetB: View {
    
    @State var background: Color = .green
    @State var showActionSheet: Bool = false
    
    var body: some View {
        
        ZStack {
            
            background.ignoresSafeArea()
            
            VStack {
               
                HStack {
                    Image(systemName: "circle.fill")
                    
                    Text("Name")
                    
                    Spacer()
                    
                    Button {
                        showActionSheet.toggle()
                    } label: {
                        Image(systemName: "ellipsis")
                    }
                    .accentColor(.primary)
                    .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
                    

                }
                .padding(.horizontal)
                
                Rectangle()
                    .aspectRatio(contentMode: .fit)
                
            }
            
            
        }
    }
    
    func getActionSheet() -> ActionSheet {
        
        let buttonRed = ActionSheet.Button.default(Text("Red"), action: {background = .red})
        let buttonPurple = ActionSheet.Button.default(Text("Purple"), action: {background = .purple})
        let cancelButton = ActionSheet.Button.cancel()
        let changeWhite = ActionSheet.Button.destructive(Text("White?"), action: {background = .white})
        
        
        return ActionSheet(title: Text("Change Background Color"),
                           message: Text("Do you want to change the background color?"),
                           buttons: [buttonRed,buttonPurple,cancelButton,changeWhite])
    }
    
}

struct ActionSheetB_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetB()
    }
}
