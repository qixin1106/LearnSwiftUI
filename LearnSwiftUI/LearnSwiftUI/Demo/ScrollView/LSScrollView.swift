//
//  LSScrollView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/9.
//

import SwiftUI

struct LSScrollView: View {
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: true, content: {
            
            ForEach(0..<50) { section in
                
                ScrollView(.horizontal, showsIndicators: true, content: {
                    
                    HStack{
                        ForEach(0..<5) { row in

                            LSScrollViewItem(section: section, row: row)
                        }
                    }
                    
                })
                
            }
        })
    }
}


struct LSScrollViewItem: View {
    var section: Int = 0
    var row: Int = 0
    
    var body: some View {
        VStack {
            Image("dog")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .center)
            Text("Section:\(section) Row:\(row)")
        }
    }
}



struct LSScrollView_Previews: PreviewProvider {
    static var previews: some View {
        LSScrollView()
    }
}

struct LSScrollView_Previews_2: PreviewProvider {
    static var previews: some View {
        LSScrollViewItem(section: 0, row: 0)
    }
}
