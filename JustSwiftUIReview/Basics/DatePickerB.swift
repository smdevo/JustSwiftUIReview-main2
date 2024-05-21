//
//  DataPickerB.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 13/05/24.
//

import SwiftUI

struct DatePickerB: View {
    
    @State var date: Date = Date()
    
    let firstDate: Date = Calendar.current.date(from: DateComponents(year: 1950))!
    
    let endingDate: Date = Date()
    
    let firstDate1: Date = Date()
    
    let endingDate1: Date = Calendar.current.date(from: DateComponents(year: 2100))!
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        
        formatter.dateStyle = .short
        
        return formatter
    }
    
    
    var body: some View {
    
        VStack {
            DatePicker("Select a date: ", selection: $date)
                .accentColor(Color.red)
            
            DatePicker(selection: $date, displayedComponents: [
                .date
            
            ], label: {
                Text("Selecting day")
            })
            
            DatePicker("",
                       selection: $date,
                       in: firstDate...endingDate,
                       displayedComponents: [.date])
            .datePickerStyle(.wheel)

            Text("Make an appointment for \(dateFormatter.string(from: date))")
                //.font(.largeTitle)
            
            DatePicker(selection: $date, in: firstDate1...endingDate1, displayedComponents: [.date], label: {EmptyView()})
                .datePickerStyle(.wheel)
            
        }
  
    }
}

struct DataPickerB_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerB()
    }
}
