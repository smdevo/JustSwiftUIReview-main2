//
//  HomeView.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 16/05/24.
//

import SwiftUI

struct HomeViewG: View {
 
    @AppStorage("signed") var isSigned: Bool?
    @AppStorage("username") var usernameOfM: String?
    @AppStorage("password") var passwordOfM: String?
    
    var body: some View {
        Text("HomeView")
            .onTapGesture {
                usernameOfM = nil
                passwordOfM = nil
                isSigned = false
            }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewG()
           
    }
}
