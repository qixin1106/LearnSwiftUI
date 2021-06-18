//
//  LSGeometryView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/18.
//

import SwiftUI

struct LSGeometryView: View {
    
    @State private var completionAmount: CGFloat = 0.0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        VStack {
            Rectangle()
                .trim(from: 0, to: completionAmount)
                .stroke(Color.red, lineWidth: 5)
                .frame(width: 100, height: 100)
                .rotationEffect(.degrees(0))
            Circle()
                .trim(from: 0, to: completionAmount)
                .stroke(Color.red, lineWidth: 5)
                .frame(width: 100, height: 100)
                .rotationEffect(.degrees(0))
            Capsule()
                .trim(from: 0, to: completionAmount)
                .stroke(Color.red, lineWidth: 5)
                .frame(width: 200, height: 100)
                .rotationEffect(.degrees(0))
            Ellipse()
                .trim(from: 0, to: completionAmount)
                .stroke(Color.red, lineWidth: 5)
                .frame(width: 200, height: 100)
                .rotationEffect(.degrees(0))
            ContainerRelativeShape()
                .trim(from: 0, to: completionAmount)
                .stroke(Color.red, lineWidth: 5)
                .frame(width: 200, height: 100)
                .rotationEffect(.degrees(0))
            RoundedRectangle(cornerRadius: 25)
                .trim(from: 0, to: completionAmount)
                .stroke(Color.red, lineWidth: 5)
                .frame(width: 200, height: 100)
                .rotationEffect(.degrees(0))
        }
        .onReceive(timer) { _ in
            withAnimation {
                if completionAmount == 1 {
                    completionAmount = 0
                } else {
                    completionAmount += 0.25
                }
            }
        }
        
        
    }
}

struct LSGeometryView_Previews: PreviewProvider {
    static var previews: some View {
        LSGeometryView()
    }
}
