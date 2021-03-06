//
//  LSImageView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/8.
//

import SwiftUI

struct LSImageView: View {
    var body: some View {
        
        VStack {
            
            Image("dog")
                //可缩放，不开启它，无法使用aspectRatio
                .resizable()
                //缩放模式，如UIKit
                .aspectRatio(contentMode: .fit)
                .cornerRadius(50)
                .frame(width: 100, height: 100, alignment: .center)
            
            Image("dog")
                //可缩放，不开启它，无法使用aspectRatio
                .resizable()
                //缩放模式，如UIKit
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle(), style: FillStyle())
                .frame(width: 100, height: 100, alignment: .center)

            
            //UIImage方式
            Image(uiImage: UIImage(named: "dog")!)
                //可缩放，不开启它，无法使用aspectRatio
                .resizable()
                //缩放模式，如UIKit
                .aspectRatio(contentMode: .fit)
                .clipShape(Path(ellipseIn: CGRect(x: 100, y: 30, width: 256, height: 128)), style: FillStyle())
            
            
            Image(systemName: "cloud.heavyrain.fill")
                .font(.system(size: 64))
            
            
            Text("I am a dog")
                .font(.system(size: 60))
                .background(
                    Image("dog")
                        .resizable()
                )
                .foregroundColor(.white)
        }
    }
}

struct LSImageView_Previews: PreviewProvider {
    static var previews: some View {
        LSImageView()
    }
}
