//
//  DetailPageC.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 08/06/24.
//

import SwiftUI
import CoreData

struct DetailPageC: View {
    
    @Environment(\.managedObjectContext) var moc
    
    @Environment(\.presentationMode) var pm
    
    @State var alerttext: String = ""
    @State var alerttoggle: Bool = false
    
    @State var nametft: String = ""
    @State var surnametft: String = ""
    @State var age: Double = 20
    
    
    var body: some View {
        
        NavigationView {
            
            VStack(spacing: 30) {
                
                TextField("Name", text: $nametft)
                    .padding()
                    .background(.gray.opacity(0.3))
                    .cornerRadius(10)
                    
                    
                
                TextField("Surname", text: $surnametft)
                    .padding()
                    .background(.gray.opacity(0.3))
                    .cornerRadius(10)
                
                Text("Age: \(Int(age))")
                    .font(.largeTitle)
                  
                
                Slider(value: $age, in: 15.0...100.0)
                   
                Button {
                    
                    guard !nametft.isEmpty else {
                        alerttext = "You have not completed name yet"
                        alerttoggle.toggle()
                        return
                    }
                    guard !surnametft.isEmpty else {
                        alerttext = "You have not completed Surname yet"
                        alerttoggle.toggle()
                        return
                    }
                    let student = Student(context: self.moc)
                    student.name = nametft
                    student.surname = surnametft
                    
                    try? self.moc.save()
                    
                    pm.wrappedValue.dismiss()
                } label: {
                    Text("Add")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(10)
                }
                .alert(isPresented: $alerttoggle, content: givingAlert)

                
                
                
            }//Vstack
            .padding()
            .navigationTitle("Details")
            .navigationBarItems(trailing: canCellButton)
            
        }//Nav
    }
    
    
    var canCellButton: some View {
        Button {
            pm.wrappedValue.dismiss()
        } label: {
            Text("Cancel")
        }

    }
    
    func givingAlert() -> Alert {
        return Alert(title: Text(alerttext))
    }
}

struct DetailPageC_Previews: PreviewProvider {
    static var previews: some View {
        DetailPageC()
    }
}
