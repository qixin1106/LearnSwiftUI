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

        })
        
    }
}

struct LSStackView_Previews: PreviewProvider {
    static var previews: some View {
        LSStackView()
    }
}
