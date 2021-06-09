//
//  LSColorPickerView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/9.
//

import SwiftUI

struct LSColorPickerView: View {
    @State private var selectedColor: Color = Color.clear
    
    var body: some View {
        
        VStack {
            HStack {
                Text("你选择了")
                Rectangle()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(selectedColor)
                    .border(Color.black, width: 1)
                
            }
            ColorPicker(selection: $selectedColor, label: {
                Text("选择颜色")
            }).fixedSize()

        }
    }
}

struct LSColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        LSColorPickerView()
    }
}
