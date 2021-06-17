//
//  LSSliderView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/17.
//

import SwiftUI

struct LSSliderView: View {
    
    @State private var value: CGFloat = 0.5
    @State private var editing: Bool = false
    
    var body: some View {
        
        VStack {
            
            // # Show Value
            Text("\(value, specifier: "%.1f")")
                .font(.title)
            
            
            // #1
            Slider(value: $value) {
                Text("Point")
            }
            .accentColor(.yellow)
            .padding(30)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.yellow, lineWidth: 2.0)
                    .padding(10)
            )
            

            
            // #2
            Slider(value: $value, in: 0...2) {
                
            }
            .accentColor(.red)
            
            
            // #3
            Slider(value: $value, in: 0...3, minimumValueLabel: Text("min").font(.body), maximumValueLabel: Text("Max").font(.title)) {
                
            }
            .accentColor(.green)

            
            // #4
            Slider(value: $value, in: 0...3, step: 0.5, onEditingChanged: { isEdit in
                editing = isEdit
            }, minimumValueLabel: Text("min").font(.body), maximumValueLabel: Text("Max").font(.title)) {

            }
            .accentColor(.orange)
            
            
            
            
            //# Test
            if (editing) {
                Text("Editing")
            }
            
        }
        
        
        
    }
}

struct LSSliderView_Previews: PreviewProvider {
    static var previews: some View {
        LSSliderView()
    }
}
