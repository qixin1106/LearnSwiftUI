//
//  LSGeometryReaderView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/16.
//

import SwiftUI

struct LSGeometryReaderView: View {
    var body: some View {
        
        //通过GeometryReader获取建议的
        GeometryReader { geometry in
            HStack(spacing: 0) {
                Text("Left")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .frame(width: geometry.size.width * 0.3, height: geometry.size.height * 2.0)
                    .background(Color.yellow)
                Text("Right")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .frame(width: geometry.size.width * 0.7, height: geometry.size.height * 0.5)
                    .background(Color.orange)
                
            }
        }
        .frame(height: 50)
        
    }
}

struct LSGeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        LSGeometryReaderView()
    }
}
