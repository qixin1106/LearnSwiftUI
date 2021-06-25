//
//  LSEnvironmentObjectView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/25.
//

import SwiftUI


class EnvironmentObjectItem: ObservableObject {
    @Published var name: String = ""
    @Published var age: Int = 0
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}


struct EnvironmentObjectItem2 {
    var name: String = ""
    var age: Int = 0
}



struct LSEnvironmentObjectView: View {
    
    @StateObject var myItem = EnvironmentObjectItem(name: "Swift", age: 10)
    
    @State private var myItem2 = EnvironmentObjectItem2(name: "Objective-C", age: 20)
    
    @ObservedObject var myItem3 = EnvironmentObjectItem(name: "C++", age: 30)

    @State private var isSwitch: Bool = false
    
    var body: some View {
        
        VStack {
            
            Group {
                Text("@StateObject").font(.title)
                Text("name:\(myItem.name) age:\(myItem.age)").background(Color.green)
                LSEnvironmentObjectDetailView()
            }
            .environmentObject(myItem)
            
            
            Group {
                Text("@State").font(.title)
                Text("name:\(myItem2.name) age:\(myItem2.age)").background(Color.green)
                LSEnvironmentObjectDetailView2(myItem: myItem2)
            }

            
            Group {
                Text("@ObservableObject").font(.title)
                Text("name:\(myItem3.name) age:\(myItem3.age)").background(Color.green)
                LSEnvironmentObjectDetailView3()
            }
            .environmentObject(myItem3)
            
            
            Button(action: {
                myItem.name = "Swift"
                myItem.age = 10
                
                myItem2.name = "Objective-C"
                myItem2.age = 20

                myItem3.name = "C++"
                myItem3.age = 30

            }, label: {
                Text("Restart")
            })
        }
        
    }
    

}




struct LSEnvironmentObjectDetailView: View {
    
    @EnvironmentObject var myItem: EnvironmentObjectItem
    
    var body: some View {
        VStack {
            Text("SubView").foregroundColor(.secondary)
            Text("name:\(myItem.name) age:\(myItem.age)")
            Button(action: {
                myItem.age += 1
            }, label: {
                Text("age +1")
            })
            Button(action: {
                myItem.name += "1"
            }, label: {
                Text("Change Name")
            })
        }
        .background(Color.yellow)
        .padding(15)
    }
}





struct LSEnvironmentObjectDetailView2: View {
    
    @State var myItem: EnvironmentObjectItem2
    
    var body: some View {
        VStack {
            Text("SubView").foregroundColor(.secondary)
            Text("name:\(myItem.name) age:\(myItem.age)")
            Button(action: {
                myItem.age += 1
            }, label: {
                Text("age +1")
            })
            Button(action: {
                myItem.name += "1"
            }, label: {
                Text("Change Name")
            })
        }
        .background(Color.yellow)
        .padding(15)
    }
}


struct LSEnvironmentObjectDetailView3: View {
    
    @EnvironmentObject var myItem: EnvironmentObjectItem
    
    var body: some View {
        VStack {
            Text("SubView").foregroundColor(.secondary)
            Text("name:\(myItem.name) age:\(myItem.age)")
            Button(action: {
                myItem.age += 1
            }, label: {
                Text("age +1")
            })
            Button(action: {
                myItem.name += "1"
            }, label: {
                Text("Change Name")
            })
        }
        .background(Color.yellow)
        .padding(15)
    }
}




struct LSEnvironmentObjectView_Previews: PreviewProvider {
    static var previews: some View {
        LSEnvironmentObjectView()
    }
}
