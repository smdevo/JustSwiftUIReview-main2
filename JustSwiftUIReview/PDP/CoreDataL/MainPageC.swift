//
//  MAinPageC.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 08/06/24.
//

import SwiftUI
import CoreData

struct MainPageC: View {
    
    @FetchRequest(entity: Student.entity(), sortDescriptors: []) var students: FetchedResults<Student>
    @State var detailPagetoggle: Bool = false
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(students, id: \.id) { student in
                    HStack {
                        VStack {
                            Text(student.name ?? "Anvar")
                                .font(.largeTitle)
                            Text(student.surname ?? "Sanayev")
                            
                            Spacer()
                            
                            Button {
                                
                            } label: {
                                Image(systemName: "trash")
                            }

                        }
                    }
                }
            }//List
            .navigationBarTitle("Students", displayMode: .inline)
            .navigationBarItems(trailing: trailingButton)
            
        }//Nav
    }//body
    
    
    
    
    var trailingButton: some View {
        
        Button {
            detailPagetoggle.toggle()
        } label: {
            Text("Add").font(.title)
        }
        .sheet(isPresented: $detailPagetoggle, content: {DetailPageC()})

        
    }
    
    
}

struct MAinPageC_Previews: PreviewProvider {
    static var previews: some View {
        MainPageC()
    }
}
