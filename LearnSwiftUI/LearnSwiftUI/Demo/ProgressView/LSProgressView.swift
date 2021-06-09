//
//  LSProgressView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/9.
//

import SwiftUI


//自定义样式
struct CustomProgressViewStyle: ProgressViewStyle {
    
    var color = Color.red
    var width = 5.0

    func makeBody(configuration: Configuration) -> some View {
        let fractionCompleted = configuration.fractionCompleted ?? 0

        return ZStack {
            Circle()
                .trim(from: 0, to: CGFloat(fractionCompleted))
                .stroke(color, style: StrokeStyle(lineWidth: CGFloat(width), lineCap: .round))
                .rotationEffect(.degrees(-90))
        }
    }
}

struct LSProgressView: View {
    @State private var progress = 0.0
    var body: some View {

        VStack {
            Text("Click Here").font(.title)
                .onTapGesture {
                    if progress < 1.0 {
                        withAnimation {
                            progress += 0.1
                        }
                    }
                }
            
            //自定义样式
            Text("CustomProgressViewStyle")
            ZStack {
                ProgressView(value: progress, total: 1.0)
                    .progressViewStyle(CustomProgressViewStyle(color: .red, width: 15))
                    .frame(width: 200, height: 200)
                    .contentShape(Ellipse())
            }

            
            
            
            //菊花样式
            Text("CircularProgressViewStyle")
            ProgressView().progressViewStyle(CircularProgressViewStyle(tint: .red))
                .foregroundColor(.red)

            
            
            
            
            //线条样式
            Text("CircularProgressViewStyle")
            ProgressView(value: progress) {
                
            }
            .progressViewStyle(LinearProgressViewStyle(tint: .red))

            
        }
    }
}

struct LSProgressView_Previews: PreviewProvider {
    static var previews: some View {
        LSProgressView()
    }
}
