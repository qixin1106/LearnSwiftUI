//
//  LSTextView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/8.
//

import SwiftUI

struct LSTextView: View {
    var body: some View {
        VStack {
            Text("Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!")
                //字体设置
                .font(.largeTitle)
//                .font(.title)
//                .font(.title2)
//                .font(.title3)
//                .font(.headline)
//                .font(.subheadline)
//                .font(.body)
//                .font(.callout)
//                .font(.footnote)
//                .font(.caption)
//                .font(.caption2)

                //大小设置
//                .frame(width: 256, height: 256, alignment: .center)
                .frame(minWidth: 64, idealWidth: 128, maxWidth: 256, minHeight: 64, idealHeight: 128, maxHeight: 256, alignment: .center)
                //文字颜色
                .foregroundColor(Color.red)
                //背景颜色
                .background(Color.black)
                //填充内边距，如CSS
                .padding(20)
                //行间距
                .lineSpacing(10.0)
            
            
            Text("Hello, World!Hello, World!Hello, World!Hello, World!")
                //设置自定义字体大小
                .font(.system(size: 20))
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(Color.green)
                .background(Color.black)
                //单独设置内边距
                .padding(EdgeInsets(top: 50, leading: 10, bottom: 0, trailing: 10))
                //截断模式，如UIKit
                .truncationMode(.tail)
//                .truncationMode(.head)
//                .truncationMode(.middle)
            
            
            Text("Hello, World!Hello, World!Hello, World!Hello, World!")
                .foregroundColor(Color.purple)
                .background(Color.black)
                .lineLimit(2)
                .frame(width: 128)
                .padding(20)
                .font(.system(size: 20))
                //超长之后比例缩放，如UIKit
                .minimumScaleFactor(0.5)
                //转大小写
                .textCase(.uppercase)
//                .textCase(.lowercase)
        }
    }
}

struct LSTextView_Previews: PreviewProvider {
    static var previews: some View {
        LSTextView()
            
    }
}
