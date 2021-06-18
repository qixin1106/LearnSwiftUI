//
//  LSLazyStackView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/18.
//

import SwiftUI

struct LSLazyStackView: View {
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: true, content: {
            LazyVStack(alignment: .center, spacing: nil, pinnedViews: [.sectionHeaders,.sectionFooters], content: {
                
                Section(header: Text("1234").background(Color.yellow)) {
                    ForEach(1...8, id: \.self) { count in
                        Text("Hello World \(count)").padding()
                    }
                }
            })
        })
    }
}

struct LSLazyStackView_Previews: PreviewProvider {
    static var previews: some View {
        LSLazyStackView()
    }
}
