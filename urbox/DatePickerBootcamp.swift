//
//  DatePickerBootcamp.swift
//  urbox
//
//  Created by Chi Dung on 13/09/2022.
//

import SwiftUI

struct DatePickerBootcamp: View {
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2019)) ?? Date()
    let endingDate: Date = Date()
    var body: some View {
//        DatePicker("Select a Date", selection: $selectedDate)
//        DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
        DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date,.hourAndMinute])
            .accentColor(Color.red)
            .datePickerStyle(CompactDatePickerStyle())
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
