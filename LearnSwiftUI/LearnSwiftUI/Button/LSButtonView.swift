//
//  LSButtonView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/8.
//

import SwiftUI

struct LSButtonView: View {
    
    @State private var isPresented = false
    
    var body: some View {
        VStack {
            
            //按钮1：图文按钮
            Button(action: {
                isPresented = true
            }, label: {
                //水平布局，图文样式
                HStack {
                    Image("2048")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50, alignment: .center)
                    Text("Button1")
                }
            })
            
            
            //按钮2：纯文字
            Button("Button2") {
                isPresented = true
            }
            .font(.system(size: 30))
            .foregroundColor(.red)

        }
        .alert(isPresented: $isPresented, content: {
            Alert(title: Text("Button was tapped"), message: nil, dismissButton: Alert.Button.default(Text("OK")))
        })
    }
}

struct LSButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LSButtonView()
    }
}
