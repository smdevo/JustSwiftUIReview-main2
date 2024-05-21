//
//  ContextMenuB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 08/05/24.
//

import SwiftUI


struct ContextMenuB: View {
    
    @State var background: Color = .green
    
    
    var body: some View {
        
        
        ZStack {
            
            background.ignoresSafeArea()
            
            VStack {
                Image(systemName: "house.fill")
                    .font(.system(size: 25))
                Text("Home View")
                    .font(.system(size: 20))
                Text("This is what you are seing")
                    .font(.system(size: 17))
            }
            .foregroundColor(.white)
            .padding()
            .background(Color.blue.cornerRadius(15).shadow(radius: 10))
            .contextMenu {
                Button(action: {background = .red}, label: {Text("Red")})
                Button(action: {background = .purple}, label: {Text("purple")})
                Button(action: {background = .white}, label: {Text("white")})
                Button(action: {background = .gray}, label: {Text("gray")})
                Button(action: {background = .white}, label: {Text("white")})
                Button(action: {background = .brown}, label: {Text("brown")})
            }
        }
       
    }
}

struct ContextMenuB_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuB()
    }
}
