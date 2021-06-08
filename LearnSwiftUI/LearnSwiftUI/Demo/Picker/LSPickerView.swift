//
//  LSPickerView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/8.
//

import SwiftUI

struct LSPickerView: View {
    
    var contents: [String] = ["Swift","SwiftUI","Objective-C","UIKit","AppKit","Cocoa"]
    @State private var selectObj: String = "Swift"

    var body: some View {
        VStack(alignment: .center, spacing: 10, content: {

            /**
             Segmented Style
             */
            Picker(selection: $selectObj, label: Text("Picker"), content: {
                ForEach(contents,id:\.self) { item in
                    Text(item)
                }
            })
            .pickerStyle(SegmentedPickerStyle())
            
            
            Divider().padding()
            
            
            
            /**
             Menu Style
             */
            Picker(selection: $selectObj, label: Text("Picker Name"), content: {
                ForEach(contents,id:\.self) { item in
                    Text(item)
                }
            })
            .pickerStyle(MenuPickerStyle())
            
            Divider().padding()

            
            
            /**
             Default Style
             */
            Picker(selection: $selectObj, label: Text("Picker"), content: {
                ForEach(contents,id:\.self) { item in
                    Text(item)
                }
            })
            .pickerStyle(DefaultPickerStyle())
            .animation(.easeIn)
            
            
            Divider().padding()

            Text("选择：\(selectObj)")
                .font(.title)

            
            /**
             其他的Style似乎没有效果
             */
            

        })
        
    }
}

struct LSPickerView_Previews: PreviewProvider {
    static var previews: some View {
        LSPickerView()
    }
}
