//
//  LSPlayVideoView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/18.
//

import SwiftUI
import AVKit


struct LSPlayVideoView: View {
    var body: some View {
        
        VideoPlayer(player: AVPlayer(url:  URL(string: "https://bit.ly/swswift")!)) {
            VStack {
                Spacer()
                Text("Watermark")
                    .foregroundColor(.black)
                    .background(Color.white.opacity(0.7))
            }
            .frame(width: 400, height: 300)
        }
        
    }
}

struct LSPlayVideoView_Previews: PreviewProvider {
    static var previews: some View {
        LSPlayVideoView()
    }
}
