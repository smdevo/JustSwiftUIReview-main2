//
//  OnAppearB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 14/05/24.
//

import SwiftUI

struct OnAppearB: View {
    
    @State var vText: String = "Starting Text"
    
    @State var countOfRectThatShownScreen = 0
    
    
    var body: some View {
        NavigationView {
            
            ScrollView {
                
                Text(vText)
                
                LazyVStack {
                    
                    ForEach(0..<100) {_ in
                        
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                countOfRectThatShownScreen += 1
                            }
//                            .onDisappear {
//                                countOfRectThatShownScreen -= 1
//                            }
                        
                    }
                    
                }
                
                
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
                   
                    vText = "Appeared"
                    
                })
            }
            .onDisappear {
                vText = "Ending text"
            }
            .navigationTitle("Showed Recs: \(countOfRectThatShownScreen) ")
            
        }
    }
}

struct OnAppearB_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearB()
    }
}
