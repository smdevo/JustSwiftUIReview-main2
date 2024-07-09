//
//  ImagKingFB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 02/06/24.
//

import SwiftUI
import Kingfisher

struct ImagKingFB: View {
    
    
    var body: some View {
        ZStack {
            
            Color.gray.opacity(0.7).ignoresSafeArea()
            
            VStack {
                KFImage(URL(string: "https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg"))
                     .resizable()
                     .scaledToFit()
                     .cornerRadius(10)
                     .shadow(radius: 10,x: 10,y: 10)
                     .padding()
                
                KFImage(URL(string: "https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg"))
                     .resizable()
                     .scaledToFit()
                     .cornerRadius(10)
                     .shadow(radius: 10,x: 10,y: 10)
                     .padding()
                
                Text(LocalizedStringKey("greeting"))
                    .font(.largeTitle)
                
                Text("Above")
                
                
            }
            
           
            
        }
        
      
            
    }
}

struct ImagKingFB_Previews: PreviewProvider {
    static var previews: some View {
        ImagKingFB()
            .environment(\.locale, .init(identifier: "uz"))
    }
}
