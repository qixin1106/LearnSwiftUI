//
//  LSLabelTestView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/21.
//

import SwiftUI

struct LSLabelTestView: View {
    var body: some View {
        VStack {
            
            Label("Text Only", systemImage: "heart")
                .font(.title)
                .labelStyle(TitleOnlyLabelStyle())
            
            Label("Icon Only", systemImage: "star")
                .font(.title)
                .labelStyle(IconOnlyLabelStyle())
            
            Label("HelloWorld", systemImage: "star")
                .font(.title)
                .foregroundColor(.blue)
            
            Label(
                title: {
                    Text("Dog")
                        .font(.title)
                    
                },
                icon: {
                    Image("dog")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                        .aspectRatio(contentMode: .fit)
                    
                }
            )
            
            Label {
                Text("Leon paul")
                    .foregroundColor(.primary)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .clipShape(Capsule())
            } icon: {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.black)
                    .frame(width: 64, height: 64)
            }
            
        }
    }
}

struct LSLabelTestView_Previews: PreviewProvider {
    static var previews: some View {
        LSLabelTestView()
    }
}
