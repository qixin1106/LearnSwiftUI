//
//  LSDatePickerView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/9.
//

import SwiftUI

struct LSDatePickerView: View {
    
    @State private var selectedDate: Date = Date()
    
    var body: some View {
        VStack {
            
            Text("\(selectedDate)")
                .bold()
                .foregroundColor(.red)
            
            //3种 DatePicker样式，目前DefaultDatePickerStyle=CompactDatePickerStyle
            DatePicker(selection: $selectedDate) {
                Text("WheelDatePickerStyle")
            }
            .datePickerStyle(WheelDatePickerStyle())

            DatePicker(selection: $selectedDate) {
                Text("CompactDatePickerStyle")
            }
            .datePickerStyle(CompactDatePickerStyle())

            DatePicker(selection: $selectedDate) {
                Text("GraphicalDatePickerStyle")
            }
            .datePickerStyle(GraphicalDatePickerStyle())

        }
    }
}

struct LSDatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        LSDatePickerView()
    }
}
