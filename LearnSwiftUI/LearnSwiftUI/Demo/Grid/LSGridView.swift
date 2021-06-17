//
//  LSGridView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/17.
//

import SwiftUI

struct LSGridView: View {
    
    var body: some View {
        VStack {
            LSDemoGridView()
            LSDemoGridView2()
            LSDemoGridView3()
            LSDemoGridView4()
        }
    }
        
}

struct LSDemoGridView: View {
    
    let data = (1...100).map { "Item \($0)" }

    let columns = [
        GridItem(.adaptive(minimum: 100)),
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(data, id: \.self) { item in
                    Text(item)
                        .background(Color.white)
                }
            }
            .padding(.horizontal)
            .background(Color.yellow)
        }
        .frame(maxHeight: 100)
        .background(Color.red)
    }
    
}


struct LSDemoGridView2: View {
    
    let data = (1...100).map { "Item \($0)" }

    let columns = [
        GridItem(.fixed(100)),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(data, id: \.self) { item in
                    Text(item)
                        .background(Color.white)
                }
            }
            .padding(.horizontal)
            .background(Color.yellow)
        }
        .frame(maxHeight: 100)
        .background(Color.blue)
    }

}


struct LSDemoGridView3: View {
    
    let data = (1...100).map { "Item \($0)" }

    let columns = [
        GridItem(.fixed(100)),
        GridItem(.flexible()),
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(data, id: \.self) { item in
                    Text(item)
                        .background(Color.white)
                }
            }
            .padding(.horizontal)
            .background(Color.yellow)
        }
        .frame(maxHeight: 100)
        .background(Color.blue)
    }

}





struct LSDemoGridView4: View {
    
    let items = 1...50

    let rows = [
        GridItem(.fixed(50)),
        GridItem(.fixed(50))
    ]

    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, alignment: .center) {
                ForEach(items, id: \.self) { item in
                    Image(systemName: "\(item).circle.fill")
                        .font(.largeTitle)
                        .background(Color.white)
                }
            }
            .frame(height: 150)
            .background(Color.blue)
        }
        .background(Color.red)
        
    }
    
}


struct LSGridView_Previews: PreviewProvider {
    static var previews: some View {
        LSGridView()
    }
}
