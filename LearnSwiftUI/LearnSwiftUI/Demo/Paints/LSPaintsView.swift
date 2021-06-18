//
//  LSPaintsView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/18.
//

import SwiftUI


struct LSPaintsView: View {
    
    //rainbow color
    @State private var colors: [Color] = [
        Color(red: 1, green: 0, blue: 0),
        Color(red: 1, green: 165.0/255.0, blue: 0),
        Color(red: 1, green: 1, blue: 0),
        Color(red: 0, green: 1, blue: 0),
        Color(red: 0, green: 127.0/255.0, blue: 1),
        Color(red: 0, green: 0, blue: 1),
        Color(red: 139.0/255.0, green: 0, blue: 1),
    ]

    @State var colorIndex: Int = 0
    
    
    
    
    
    var body: some View {
        VStack {
            Text("AngularGradient")
            AngularGradient(gradient:Gradient(colors: colors), center: .center)
            
            
            Text("LinearGradient")
            LinearGradient(gradient: Gradient(colors: colors), startPoint: .leading, endPoint: .trailing)
            
            
            Text("RadialGradient")
            RadialGradient(gradient: Gradient(colors: colors), center: .center, startRadius: 0, endRadius: UIScreen.main.bounds.size.width*0.5)
            
            Text("Rectangle")
            HStack(alignment: .center, spacing: 0, content: {
                ForEach(colors, id:\.self) { color in
                    Rectangle().foregroundColor(color)
                }
            })
            
            Button(action: {
                colors.append(randomColor())
                colorIndex += 1
            }, label: {
                Text("Add Color")
            })
            Button(action: {
                colors.removeLast()
            }, label: {
                Text("Remove Color")
            })
        }
    }
    
    
    
    
    
    func randomColor() -> Color {
        let r = Double(arc4random()%256) / 255.0
        let g = Double(arc4random()%256) / 255.0
        let b = Double(arc4random()%256) / 255.0
        return Color(red: r, green: g, blue: b)
    }

}



struct LSPaintsView_Previews: PreviewProvider {
    static var previews: some View {
        LSPaintsView()
    }
}
