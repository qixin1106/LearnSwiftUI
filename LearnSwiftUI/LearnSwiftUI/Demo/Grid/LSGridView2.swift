//
//  LSGridView2.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/17.
//

import SwiftUI

struct LSGridView2: View {
    
    
    var columns: [GridItem] = [
        GridItem(.adaptive(minimum: 80, maximum: .infinity)),
    ]
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: true, content: {
            
            LazyVGrid(columns: columns, alignment: .center, spacing: 20, pinnedViews: [], content: {
                
                Section(header: Text("Section 1")) {
                    LSGridItemView()
                    LSGridItemView()
                    LSGridItemView()
                    LSGridItemView()
                    LSGridItemView()
                    LSGridItemView()
                }
                
                Section(header: Text("Section 2")) {
                    LSGridItemView()
                    LSGridItemView()
                    LSGridItemView()
                    LSGridItemView()
                    LSGridItemView()
                    LSGridItemView()
                }

            })
            
        })
        
    }
}


struct LSGridItemView: View {
    var body: some View {
        
        VStack {
            Image("dog")
                .resizable()
                .scaledToFit()
            Text("Tom").font(.body)
        }
        
    }
}


struct LSGridView2_Previews: PreviewProvider {
    static var previews: some View {
        LSGridView2()
            .preferredColorScheme(.dark)
    }
}
