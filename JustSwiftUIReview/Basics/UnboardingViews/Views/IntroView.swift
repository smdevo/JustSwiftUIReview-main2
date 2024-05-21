//
//  ItroView.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 16/05/24.
//

import SwiftUI

struct IntroViewG: View {
    
    @AppStorage("signed") var isSigned: Bool = false
    
    @StateObject var vm: ViewModelG = ViewModelG()
    
    var body: some View {
        
        ZStack {
            
            RadialGradient(colors: [Color("CustomColor"), Color("CustomColor").opacity(0.7)], center: .topLeading, startRadius: 60, endRadius: 500).ignoresSafeArea()
            
            
            if isSigned {
                 HomeViewG()
            }else {
                 SignInViewG()
            }
            
        }
        .environmentObject(vm)
    }
}

struct ItroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroViewG()
    }
}
