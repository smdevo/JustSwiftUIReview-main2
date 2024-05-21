//
//  TabViewB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 14/05/24.
//

import SwiftUI

struct TabViewB: View {
    
    @State var selectedTab: Int = 0
    
    
    
    
    var body: some View {
        
        
        
        TabView(selection: $selectedTab) {

            HomeView(selectedView: $selectedTab)
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Contacts")
                }
                .tag(0)


            Chat()
                .tabItem {
                    Image(systemName: "message")
                    Text("Chats")
                }
                .tag(1)

            Text("Settings")
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Settings")
                }
                .tag(2)
        }
        
        //.accentColor(.red)
    }
}


struct TabViewB_Previews: PreviewProvider {
    static var previews: some View {
        TabViewB()
    }
}


struct Chat: View {
    
    
    var body: some View {
        TabView {
            Image("im1")
                .resizable()
                .scaledToFit()
            Image("im2")
                .resizable()
                .scaledToFit()
            Image("im3")
                .resizable()
                .scaledToFit()
            Image("im4")
                .resizable()
                .scaledToFit()
            Image("im5")
                .resizable()
                .scaledToFit()
            Image("im6")
                .resizable()
                .scaledToFit()
            
        }
        .background(.gray)
        .tabViewStyle(PageTabViewStyle())
    }
}


struct HomeView: View {
    
    @Binding var selectedView: Int
    
    
    var body: some View {
        
        ZStack {
            
            Color.green
                .ignoresSafeArea()
            
            VStack {
                
             Text("HomeView")
                    .font(.largeTitle)
                
                Button {
                    
                    selectedView = 2
                    
                } label: {
                    Text("Go Settings ->")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding()
                        .background(.gray)
                        .cornerRadius(10)
                        .padding()
                        .shadow(radius: 20)
                }

                
                
            }
            
            
            
        }
        
        
    }
    
}
