//
//  LSStackView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/8.
//

import SwiftUI

struct LSStackView: View {
    
    
    var body: some View {
        
        //水平布局
        HStack (alignment: .center, spacing: 10, content: {
            
            //垂直布局
            VStack (alignment: .center, spacing: 15, content: {
                Text("Row1")
                Text("Row2")
                Text("Row2")
            })

            //垂直布局
            VStack (alignment: .center, spacing: 15, content: {
                Text("Row1")
                Text("Row2")
                Text("Row2")
            })

            //垂直布局
            VStack (alignment: .center, spacing: 15, content: {
                Text("Row1")
                Text("Row2")
                Text("Row2")
                
            })

            ZStack {
                ForEach(0..<9) { index in
                    Rectangle()
                        .border(createColor(index: index), width: 1)
                        .foregroundColor(.clear)
                        .frame(width: 100, height: 100, alignment: .center)
                        .rotationEffect(Angle(degrees: Double(index)*10.0), anchor: .center)
                }
            }
            .compositingGroup()
            .luminanceToAlpha()
            .overlay(
                ZStack {
                    Circle()
                        .foregroundColor(.yellow)

                    Circle()
                        .foregroundColor(.red)
                        .shadow(color: .orange, radius: 30, x: 0.0, y: 0.0)
                }
            )

        })
    }
    
    
    func createColor(index: Int) -> Color {
        return Color(red: Double(index)*20.0/255.0, green: 0, blue: 0)
    }
}


struct LSStackView_Previews: PreviewProvider {
    static var previews: some View {
        LSStackView()
    }
}
