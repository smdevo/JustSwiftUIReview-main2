//
//  PickerB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 13/05/24.
//

import SwiftUI

struct PickerB: View {
    @State var age: Int = 0
    
    var body: some View {
        VStack {
            Text("Age: \(age)")
                .font(.largeTitle)
            
            Picker("Picker", selection: $age) {
                ForEach(0..<10) { i in
                    Text("\(i)").tag(i)
                }
            }
            .pickerStyle(.wheel)
            
            Picker("Picker", selection: $age) {
                ForEach(0..<10) { i in
                    Text("\(i)").tag(i)
                }
            }
            .pickerStyle(.menu)
            
            Picker("Picker", selection: $age) {
                ForEach(0..<10) { i in
                    Text("\(i)").tag(i)
                }
            }
            .pickerStyle(.segmented)
        }
    }
}

struct PickerB_Previews: PreviewProvider {
    static var previews: some View {
        PickerB()
    }
}
