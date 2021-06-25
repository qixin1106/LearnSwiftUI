//
//  LSObservableObjectsView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/25.
//

import SwiftUI

struct LSObservableObjectsView: View {
    
    //@ObservedObject var item = LSObservableObjectsItem(name: "Hello", age: 0)
    @StateObject var item = LSObservableObjectsItem(name: "Hello", age: 0)

    var body: some View {
        
        VStack {
            Text("name:\(item.name) age:\(item.age)")
            LSSubObservableObjectsView()
        }
        //将item加入到环境中，这样的话，自身View以及它的子View都可以使用这个item
        .environmentObject(item)
        
    }
}

struct LSSubObservableObjectsView: View {
    
    //声明@EnvironmentObject，则item为父View传入environmentObject中的item，可以直接使用了。
    @EnvironmentObject var item: LSObservableObjectsItem
    
    var body: some View {
        
        Text("name:\(item.name) age:\(item.age)")
        
    }
}


struct LSObservableObjectsView_Previews: PreviewProvider {
    static var previews: some View {
        LSObservableObjectsView()
    }
}
