//
//  LSOutlineView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/18.
//

import SwiftUI


struct FileItem: Hashable, Identifiable, CustomStringConvertible {
    var id: Self { self }
    var name: String
    var children: [FileItem]? = nil
    var description: String {
        switch children {
            case nil:
                return "📄 \(name)"
            case .some(let children):
                return children.isEmpty ? "📂 \(name)" : "📁 \(name)"
        }
    }
}

struct LSOutlineView: View {
    

    let data =
        FileItem(name: "users", children:
                    [FileItem(name: "user1234", children:
                                [FileItem(name: "Photos", children:
                                            [FileItem(name: "photo001.jpg"),
                                             FileItem(name: "photo002.jpg")]),
                                 FileItem(name: "Movies", children:
                                            [FileItem(name: "movie001.mp4")]),
                                 FileItem(name: "Documents", children: [])
                                ]),
                     FileItem(name: "newuser", children:
                                [FileItem(name: "Documents", children: [])
                                ])
                    ])
    
    var body: some View {
        OutlineGroup(data, children: \.children) { item in
            Text("\(item.description)").padding(.leading, 10)
        }
    }
}

struct LSOutlineView_Previews: PreviewProvider {
    static var previews: some View {
        LSOutlineView()
    }
}
