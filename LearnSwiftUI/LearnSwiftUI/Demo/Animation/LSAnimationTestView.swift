//
//  LSAnimationTestView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/24.
//

import SwiftUI


struct MyCustomRectViewSteup {
    var size: CGSize = CGSize(width: 100, height: 100)
    var scale: CGFloat = 1.0
    var degrees: Double = 0.0
    var balance: Int = 0
    var opacity: Double = 0.5
}

struct LSAnimationTestView: View {
    
    @State private var setup: MyCustomRectViewSteup = MyCustomRectViewSteup()
    
    var body: some View {

        HStack (alignment: .center, spacing: 50, content: {
            
            TestAnimationView1(setup: setup)

            TestAnimationView2(setup: setup)
            
        })
        .animation(
            Animation.interpolatingSpring(stiffness: 200, damping: 10)
        )
        
    }
}


struct TestAnimationView1: View {
    
    @State var setup: MyCustomRectViewSteup
    
    var body: some View {
        
        VStack {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: setup.size.width, height: setup.size.height, alignment: .center)
                .foregroundColor(.yellow)
                .opacity(setup.opacity)
                .rotationEffect(Angle(degrees: setup.degrees))
                .overlay(
                    Text("\(setup.balance)")
                        .font(.title)
                )
            
            Button(action: {
                setup.size.width += 25
                setup.size.height += 25
                setup.degrees += 45
                setup.balance += 1
                setup.opacity += 0.25
            }, label: {
                Text("Frame Zoom in")
            })
            
            Button(action: {
                setup.size.width -= 25
                setup.size.height -= 25
                setup.degrees -= 45
                setup.balance -= 1
                setup.opacity -= 0.25
            }, label: {
                Text("Frame Zoom out")
            })

        }
        
    }
}

struct TestAnimationView2: View {
    
    @State var setup: MyCustomRectViewSteup
    
    var body: some View {
        
        VStack {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.red)
                .scaleEffect(setup.scale)
                .opacity(setup.opacity)
                .rotationEffect(Angle(degrees: setup.degrees))
                .overlay(
                    Text("\(setup.balance)")
                        .font(.title)
                )

            Button(action: {
                setup.scale += 0.25
                setup.degrees += 45
                setup.balance += 1
                setup.opacity += 0.25
            }, label: {
                Text("Scale Zoom in")
            })
            
            Button(action: {
                setup.scale -= 0.25
                setup.degrees -= 45
                setup.balance -= 1
                setup.opacity -= 0.25
            }, label: {
                Text("Scale Zoom out")
            })
        }

    }
}



struct LSAnimationTestView_Previews: PreviewProvider {
    static var previews: some View {
        LSAnimationTestView()
    }
}
