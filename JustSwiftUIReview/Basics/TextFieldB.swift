//
//  TextFieldB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 08/05/24.
//

import SwiftUI

struct TextFieldB: View {
    
    @State var titleofTF: String = ""
    @State var data: [String] = []
    
    
    var body: some View {
        
        
        NavigationView {
            
            ScrollView {
                VStack {
                   
                    TextField("Enter Text", text: $titleofTF)
                        .padding(10)
                        .background(Color.gray.opacity(0.3))
                        .cornerRadius(10)
                    
                    Button {
                        
                        if isTextApropriate() {
                            addNewElemant()
                        }
                        
                        
                    } label: {
                        Text("Save")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(isTextApropriate() ? Color.blue : Color.gray)
                            .cornerRadius(10)
                    }
                    .disabled(!isTextApropriate())
                    
                    
                    ForEach(data, id: \.self) { data in
                        Text(data)
                            //.font(.largeTitle)
                    }

                    Spacer()
                }
                .padding()
                
            }
            .navigationTitle("All Information")
        }
    }
    
    
    func isTextApropriate() -> Bool{
        
        return titleofTF.count > 2 ? true : false
    }
    
    func addNewElemant() {
        
        data.append(titleofTF)
        
        titleofTF = ""
        
    }
    
}

struct TextFieldB_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldB()
    }
}
