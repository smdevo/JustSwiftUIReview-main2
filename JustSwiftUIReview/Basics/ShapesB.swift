//
//  ShapesB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 01/05/24.
//

import SwiftUI

struct ShapesB: View {
    var body: some View {
//        Ellipse()
//            .fill(Color.red)
//            .frame(width: 200, height: 70, alignment: .center)
//
        
        
//        Capsule()
//            .frame(width: 120, height: 40)
            
//        Rectangle()
//            .padding()
//            .frame(width: 200,height: 100)
        
        RoundedRectangle(cornerRadius: 20)
            .stroke(lineWidth: 2)
            .foregroundColor(.blue)
            .frame(width: 300,height: 150)
            
        
            
        
        
        
       // Circle()
            //.fill(.blue)
           // .foregroundColor(.red)
            //.stroke()
            //.stroke(Color.red,lineWidth: 10)
            //.stroke(.green, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [20]))
//            .trim(from: 0.1, to: 0.9)
//            .stroke(Color.blue, style: StrokeStyle(lineWidth: 50, lineCap: .butt, dash: [20]))
            //.stroke(.blue,lineWidth: 50)
            //.padding(40)
        
    }
}

struct ShapesB_Previews: PreviewProvider {
    static var previews: some View {
        ShapesB()
    }
}
