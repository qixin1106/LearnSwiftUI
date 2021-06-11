//
//  LSSignInWithAppleView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/11.
//

//只能在手机中测试，这里只能看看UI

import SwiftUI
import AuthenticationServices

struct LSSignInWithAppleView: View {
    var body: some View {
        VStack {
            SignInWithAppleButton(
                onRequest: { request in
                    request.requestedScopes = [.fullName, .email]
                },
                onCompletion: { result in
                    switch result {
                    case .success(let authResults):
                        
                        switch authResults.credential {
                        case let appleIDCredential as ASAuthorizationAppleIDCredential:
                            print(appleIDCredential.fullName as Any,
                                  appleIDCredential.email as Any,
                                  appleIDCredential.user as Any)
                            
                        case let passwordCredential as ASPasswordCredential:
                            let username = passwordCredential.user
                            let password = passwordCredential.password
                            print(username, password)
                        default:
                            break
                        }
                    case .failure(let error):
                        print("failure", error)
                    }
                }
            )
            .signInWithAppleButtonStyle(.black)
            .frame(width: 200, height: 50)

            
            
            
            
            SignInWithAppleButton { request in
                
            } onCompletion: { result in
                        
            }
            .signInWithAppleButtonStyle(.white)
            .frame(width: 200, height: 50)

            
            
            
            
            
            SignInWithAppleButton { request in
                
            } onCompletion: { result in
                        
            }
            .signInWithAppleButtonStyle(.whiteOutline)
            .frame(width: 200, height: 50)
        }

    }
}

struct LSSignInWithAppleView_Previews: PreviewProvider {
    static var previews: some View {
        LSSignInWithAppleView()
    }
}
