//
//  ExtractSubviewsB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 03/05/24.
//

import SwiftUI

struct ExtractSubviewsB: View {
    
    
    
    var body: some View {
        
        
        ZStack {
            //backgroundLayer
            backgroundLayer
            
          
           //ContentLayer
           contentLayer
        }
    }
    
    //backgroundLayer
    var backgroundLayer: some View {
        
        Color.green
            .ignoresSafeArea()
        
    }
    
    //contentLayer
    
    var contentLayer: some View {
        
        HStack {
            
            
            MainContentView(title: "Apple", count: 10, backgroundColor: .red)
            
            MainContentView(title: "Oranges", count: 20, backgroundColor: .orange)
            
            MainContentView(title: "Peaches", count: 40, backgroundColor: .yellow)
            
        }
        
    }
    
    
    
}

struct MainContentView: View {
    
    @State var title: String
    
    @State var count: Int
    
    @State var backgroundColor: Color
    
    
    
    
    var body: some View {
        
        
        VStack {
            
            Text("\(count)")
            
            
            Text(title)
            
            
        }
        .padding()
        .background(backgroundColor)
        .cornerRadius(10)
        
    }
    
}



struct ExtractSubviewsB_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsB()
    }
}




