//
//  HomeView.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 16/05/24.
//

import SwiftUI

struct HomeViewG: View {
 
    @AppStorage("signed") var isSigned: Bool?
    
    
    var body: some View {
        Text("HomeView")
            .onTapGesture {
                isSigned = false
            }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewG()
           
    }
}
