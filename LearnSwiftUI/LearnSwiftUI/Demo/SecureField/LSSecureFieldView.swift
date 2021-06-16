//
//  LSSecureFieldView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/16.
//

import SwiftUI
import UIKit
import Foundation

struct LSSecureFieldView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isShowAlert: Bool = false
    
    
    var body: some View {
        VStack{
            
            //name
            TextField("User name (email address)", text: $username)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            //password
            SecureField(
                "Password",
                text: $password
            ) {
                isShowAlert = true
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            //login button
            Button(action: {
                isShowAlert = true
            }, label: {
                Text("Login SwiftUI App")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color.blue)
                    .cornerRadius(10)
            })

        }
        .padding(50)
        .alert(isPresented: $isShowAlert, content: {
            Alert(title: Text("Test"), message: Text("name:\(username)\npassword:\(password)"), dismissButton: .cancel(Text("OK")))
        })
    }
    
    

}


struct LSSecureFieldView_Previews: PreviewProvider {
    static var previews: some View {
        LSSecureFieldView()
    }
}
