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
                //大小设置
                .frame(minWidth: 64, idealWidth: 128, maxWidth: 256, minHeight: 64, idealHeight: 128, maxHeight: 128, alignment: .center)
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
                .padding(EdgeInsets(top: 20, leading: 0, bottom: 0, trailing: 0))
                //截断模式，如UIKit
                .truncationMode(.tail)
            
            
            Text("Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!")
                .foregroundColor(Color.purple)
                .background(Color.black)
                .lineLimit(2)
                .frame(width: 256)
                .font(.system(size: 20))
                //超长之后比例缩放，如UIKit
                .minimumScaleFactor(0.5)
                //转大小写
                .textCase(.uppercase)
            
            
            
            
            
            
            Text("Hello World")
                .italic()
                .redacted(reason: .placeholder)
            
            
            
            
            Text("Hello World")
                .bold()
                .italic()
            
            
            
            
            
            
            
            
            
            /**
             public static let ultraLight: Font.Weight
             public static let thin: Font.Weight
             public static let light: Font.Weight
             public static let regular: Font.Weight
             public static let medium: Font.Weight
             public static let semibold: Font.Weight
             public static let bold: Font.Weight
             public static let heavy: Font.Weight
             public static let black: Font.Weight
             */
            /**
             case `default`

             @available(watchOS 7.0, *)
             case serif

             case rounded

             @available(watchOS 7.0, *)
             case monospaced
             */
            
            Text("Hello World")
                .font(.system(size: 20, weight: Font.Weight.black, design: Font.Design.monospaced))

            
        }
    }
}

struct LSTextView_Previews: PreviewProvider {
    static var previews: some View {
        LSTextView()
        
    }
}
