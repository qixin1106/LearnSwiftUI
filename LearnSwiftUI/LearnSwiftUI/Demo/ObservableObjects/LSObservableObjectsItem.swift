//
//  LSObservableObjectsItem.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/25.
//

import Foundation

//ObservableObject标记对象为监听对象
class LSObservableObjectsItem: ObservableObject {
    
    //当标记@Published的属性发生改变时，会刷新UI
    @Published var name: String
    
    //手动标记改变时可刷新UI，与@Published的区别是你可以手动控制通知刷新UI。
    //如下，可以增加逻辑判断是否需要发送刷新通知
    var age: Int {
        didSet {
            if age % 2 == 0 {
                objectWillChange.send()
            }
        }
    }
    
    init(name: String, age: Int)
    {
        self.name = name
        self.age = age
        
        /*
         //测试@Published属性变化自动发送
        let deadlineTime = DispatchTime.now() + .seconds(1)
        DispatchQueue.main.asyncAfter(deadline: deadlineTime) {
            self.name = "What?"
        }
        */
        
        //测试objectWillChange手动发送方式
        for num in 1...10 {
            let deadlineTime = DispatchTime.now() + .seconds(num)
            DispatchQueue.main.asyncAfter(deadline: deadlineTime) {
                self.age += 1
            }
        }

    }
}
