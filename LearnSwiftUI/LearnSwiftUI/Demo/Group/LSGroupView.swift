//
//  LSGroupView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/10.
//
/**
    
 */
import SwiftUI

struct LSGroupView: View {
    
    var body: some View {
        VStack {
            
            //可以将Group的配置作用在其内部每一个元素上。
            //Group 1
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .font(.system(size: 14))
            .foregroundColor(.yellow)
            .background(Color.purple)
            .padding(5)

            
            //Group 2
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .font(.system(size: 34))
            .foregroundColor(.black)
            .background(Color.green)
            .padding(10)
            
            
            
            
            Text("Hello, World!")
                .font(.system(size: 50))
                .foregroundColor(.pink)
                .background(Color.gray)
                .padding(20)
            
            
            //Group 3
            Group {
                Image(systemName: "heart.fill")
                Image("dog").resizable()
                Text("Dog")
            }
            .frame(width: 100, height: 100, alignment: .center)
            .aspectRatio(contentMode: .fill)
            .font(.system(size: 30))

            
            //Group 4
            Group {
                Text("Hello ") + Text(Image(systemName: "star")) + Text(" World!")
                Text("Hello ") + Text(Image(systemName: "star")) + Text(" World!")
            }
            .font(.system(size: 30))
            .foregroundColor(.white)
            
        }
        .background(Color.orange)
    }
}

struct LSGroupView_Previews: PreviewProvider {
    static var previews: some View {
        LSGroupView()
    }
}
