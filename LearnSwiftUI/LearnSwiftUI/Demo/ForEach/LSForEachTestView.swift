//
//  LSForEachTestView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/21.
//

import SwiftUI


// #2
struct LSForEachTestItem {
    var id = UUID()
    var name: String
    var age: Int
}

// #5
class TestMyObj {

    var id = UUID()
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

struct LSForEachTestView: View {
    
    // #2
    var items: [LSForEachTestItem] = [
        LSForEachTestItem(name: "Swift", age: 10),
        LSForEachTestItem(name: "C++", age: 10),
        LSForEachTestItem(name: "Java", age: 10),
    ]
    
    //#3
    var colors: [Color] = [.blue,.red,.yellow]
    
    
    //#5
    var objs: [TestMyObj] = [
        TestMyObj(name: "Swift", age: 10),
        TestMyObj(name: "C++", age: 10),
        TestMyObj(name: "Java", age: 10),
    ]
    
    
    var body: some View {
        
        VStack {
            
            // #1
            Group {
                ForEach(0..<3) {
                    Text("\($0)")
                }
                Divider()
            }
            
            // #2
            Group {
                ForEach(items, id:\.id) { item in
                    Text("name:\(item.name) age:\(item.age)")
                }
                Divider()
            }
            
            // #3
            Group {
                ForEach(colors, id:\.self) { color in
                    Text("Color").foregroundColor(color)
                }
                Divider()
            }

            
            // #4
            Group {
                ForEach((0..<3).reversed(), id:\.self) { index in
                    Text("\(index)")
                }
                Divider()
            }
            
            // #5
            Group {
                ForEach(objs, id:\.id) { obj in
                    Text("name:\(obj.name) age:\(obj.age)")
                }
                Divider()
            }

        }
        
    }
}

struct LSForEachTestView_Previews: PreviewProvider {
    static var previews: some View {
        LSForEachTestView()
    }
}
