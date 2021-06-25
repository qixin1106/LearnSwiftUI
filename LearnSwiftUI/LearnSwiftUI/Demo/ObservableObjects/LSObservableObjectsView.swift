//
//  LSObservableObjectsView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/25.
//

import SwiftUI

struct LSObservableObjectsView: View {
    
    
    @ObservedObject var item = LSObservableObjectsItem(name: "Hello", age: 0)
    
    var body: some View {
        
        VStack {
            Text("name:\(item.name) age:\(item.age)")
            LSSubObservableObjectsView()
        }
        .environmentObject(item)
        
    }
}

struct LSSubObservableObjectsView: View {
    
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
