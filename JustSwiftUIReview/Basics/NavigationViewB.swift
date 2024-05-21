//
//  NavigationViewB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 04/05/24.
//

import SwiftUI

struct NavigationViewB: View {
    
    @State var isSheetView: Bool = false
    
    
    var body: some View {
    
        NavigationView {
            ZStack {
                Color.gray.opacity(0.2)
                    .ignoresSafeArea()
                
                ScrollView {
                    
                    VStack {
                        
                       

                        
                        ForEach(1..<7) { index in
                            
                            
                            NavigationLink {
                               
                                AllScaleImageView(image: "im\(index)")
                                
                            } label: {
                                Image("im\(index)")
                                       .resizable()
                                       .scaledToFit()
                                       .cornerRadius(10)
                                       .padding(5)
                            }

                            
                           
                            
                        }
                        
                        
                    }
                    
                }
                
             
                
                
            }
            .navigationTitle("Posts")
            //.navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(leading:
                                    
                 Button(action: {
                isSheetView.toggle()
                 }, label: {
                     Image(systemName: "person.fill")
                         //.foregroundColor(.purple)
                         .font(.system(size: 25))
                 })
                    .sheet(isPresented: $isSheetView, content: {
                        LeftPopView()
                    })
                                ,
                                trailing:
                                    NavigationLink(destination: {
                
                                     JustSecondViewN()
                
                                    }, label: {
                                        Image(systemName: "book.fill")
                                     })
                                    
            )
            
            
        }
        
        
        
    }
}


struct JustSecondViewN: View {
    
    
    var body: some View {
        ZStack {
            
            Color.green.ignoresSafeArea()
            
        }
        .navigationTitle("SecondView")
        .navigationBarItems(trailing:
                                NavigationLink(destination: {
            JustThirdViewN()
        }, label: {
            Image(systemName: "rectangle.portrait.and.arrow.right.fill")
        })
        
        )
    }
}



struct JustThirdViewN: View {
    
    
    var body: some View {
        ZStack {
            
            Color.purple.ignoresSafeArea()
            
        }
        .navigationTitle("Third")
    }
}





struct AllScaleImageView: View {
    
    @Environment(\.presentationMode) var pm
    
   @State var image: String
    
    
    var body: some View {
        
        ZStack {
            
            Color(uiColor: UIColor.systemGray5).ignoresSafeArea()
            
            
            Image(image)
                .resizable()
                .scaledToFit()
        }
        .navigationTitle("Image")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading:
        
           Button(action: {
            pm.wrappedValue.dismiss()
            }, label: {
            Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            })
        
        )
        
        
    }
    
}



struct LeftPopView: View {
    
    @Environment(\.presentationMode) var pm
    
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            Color.green.ignoresSafeArea()

            
            Button {
                pm.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            }

        }
        
    }
}




struct NavigationViewB_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewB()
    }
}




//var fruits1: [String] = ["Apple","banana","peach","orange","pineapple"]
//var vegies1: [String] = ["potato","tomato","onion","cabbage"]

