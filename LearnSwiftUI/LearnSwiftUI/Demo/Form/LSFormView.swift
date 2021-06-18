//
//  LSFormView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/18.
//

import SwiftUI

struct LSFormView: View {
    var body: some View {
        Form {
            ForEach(0..<100) { index in
                Text("Hello Wolrd \(index)")
            }
        }
    }
}

struct LSFormView_Previews: PreviewProvider {
    static var previews: some View {
        LSFormView()
    }
}
