//
//  LSTextFieldView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/11.
//

import SwiftUI

struct LSTextFieldView: View {
    
    @State private var inputText: String = ""
    @State private var isEditing = false
    @State private var textColor: Color = Color(red: 0, green: 1, blue: 1)
    
    var body: some View {
        VStack {
            
            Text(inputText)
                .font(.title)
                .foregroundColor(isEditing ? textColor : .black)
                .animation(.easeIn(duration: 0.25))
                .onChange(of: inputText, perform: { value in
                    
                    let r = Double(arc4random()%256)
                    let g = Double(arc4random()%256)
                    let b = Double(arc4random()%256)
                    
                    textColor = Color(red: r/255.0, green: g/255.0, blue: b/255.0)
                })
            
            HStack {
                
                Text("Name:")
                TextField("Input Name", text: $inputText) { editing in
                    isEditing = editing
                } onCommit: {
                    
                }
                .frame(width: 128, height: 32, alignment: .center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .keyboardType(.default)
                .textContentType(.username)
            }
        }
    }
}

struct LSTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        LSTextFieldView()
    }
}
