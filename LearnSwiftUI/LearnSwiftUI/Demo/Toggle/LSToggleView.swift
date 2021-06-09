//
//  LSToggleView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/8.
//

import SwiftUI

struct LSToggleView: View {
    
    //Switch is on？
    @State private var isOn = false
    //Alert Title String
    @State private var alertTitle = ""
    //Text Color
    @State private var textColor: Color = Color.gray
    
    var body: some View {
        
        //类似UISwitch
        Toggle(isOn: $isOn, label: {
            Image("dog")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 64, height: 64, alignment: .center)
            Text("Switch")
                .frame(maxWidth: .infinity, alignment: .trailing)
                .font(.title)
                .foregroundColor(textColor)
        })
        //类似ValueChanged
        .onChange(of: isOn, perform: { value in
            
            if value == true {
                alertTitle = "Switch On"
                textColor = Color.green
            } else {
                alertTitle = "Switch Off"
                textColor = Color.gray
            }
        })
        //类似OC的FitSize,这样可以居中了，否则会被约束到两侧并拉伸
        .fixedSize()

    }
}

struct LSToggleView_Previews: PreviewProvider {
    static var previews: some View {
        LSToggleView()
    }
}
