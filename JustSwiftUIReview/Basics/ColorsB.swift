//
//  ColorsB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 01/05/24.
//

import SwiftUI

struct ColorsB: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
                //Color.primary
                
                //Color(uiColor: UIColor.red)
                
                //Color(white: 0.5)
                
//                Color(uiColor: UIColor.secondarySystemFill)
                Color("CustomColor")
                
            )
            .frame(width: 200, height: 100)
            .shadow(color: .blue.opacity(0.5), radius: 10, x: 10, y: 10)
    }
}

struct ColorsB_Previews: PreviewProvider {
    static var previews: some View {
        ColorsB()
    }
}
