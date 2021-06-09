//
//  LSButtonView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/8.
//

import SwiftUI




struct LSButtonView: View {
    
    @State private var isPresented = false
    @State private var isOn = false
    @State private var alertTitle = ""

    
    var body: some View {
        VStack {
            
            //按钮1：图文按钮
            Button(action: {
                alertTitle = "On Click Button1"
                isPresented = true
            }, label: {
                //水平布局，图文样式
                HStack {
                    Image("dog")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50, alignment: .center)
                    Text("Button1")
                }
            })
            
            
            //按钮2：纯文字
            Button("Button2") {
                alertTitle = "On Click Button2"
                isPresented = true
            }
            .font(.system(size: 30))
            .foregroundColor(.red)

        }
        .alert(isPresented: $isPresented, content: {
            Alert(title: Text(alertTitle), message: nil, dismissButton: Alert.Button.default(Text("OK")))
        })
    }
}

struct LSButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LSButtonView()
    }
}
