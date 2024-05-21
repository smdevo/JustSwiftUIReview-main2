//
//  TextEditorB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 08/05/24.
//

import SwiftUI

struct TextEditorB: View {
    
    @State var textOfTextEditor: String = "First Text"
    
    @State var savedText: String = ""
    
    var body: some View {
        
        NavigationView {
            
            
            VStack {
                
               TextEditor(text: $textOfTextEditor)
                    
                    .frame(height: 300)
                    .colorMultiply(.gray.opacity(0.4))
                    .cornerRadius(10)
                    .padding()
                
                Button {
                    
                    savedText = textOfTextEditor
                    
                } label: {
                    Text("Save".capitalized)
                        .padding()
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.cornerRadius(10))
                    
                }

                
                Text(savedText)
                
                
                Spacer()
                
            }
            .padding()
            //.background(Color.green)
            .navigationTitle("Informations")
        }
    }
}

struct TextEditorB_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorB()
    }
}
