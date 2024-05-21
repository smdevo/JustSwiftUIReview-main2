//
//  SwiftUIView.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 15/05/24.
//

import SwiftUI

struct TapGestureB: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack {
            
            RoundedRectangle(cornerRadius: 30)
                .fill(isSelected ? Color.blue : Color.red)
                .frame(height: 200)
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
                
            
            Button {
                
                isSelected.toggle()
                
            } label: {
                Text("Button")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                       LinearGradient(
                          colors: [Color.blue,.red],
                          startPoint: .topLeading,
                          endPoint: .bottomTrailing)
                    )
                    .cornerRadius(10)
                    .padding()
            }

            Text("Tap Gesture")
                .font(.system(size: 20))
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(
                   LinearGradient(
                      colors: [Color.blue,.red],
                      startPoint: .topLeading,
                      endPoint: .bottomTrailing)
                )
                .cornerRadius(10)
                .padding()
                .onTapGesture {
                    isSelected.toggle()
                }
            
            
            
            Spacer()
        }
        .padding(30)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureB()
    }
}
