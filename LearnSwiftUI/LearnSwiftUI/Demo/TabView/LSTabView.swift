//
//  LSTabBarView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/10.
//

import SwiftUI

struct LSTabView: View {
    var body: some View {

        TabView {
            
            
            NavigationView {
                LSFirstView()
            }
            .tabItem {
                Label("Home", systemImage: "heart.text.square")
            }

            
            
            NavigationView {
                LSSecondView()
            }
            .tabItem {
                Label("Me", systemImage: "person")
            }
            
            
        }
    }
}







struct LSFirstView: View {
        
    var body: some View {
        
        List {
            ForEach(0..<50) { index in
                NavigationLink (
                    destination: LSDetailView(),
                    label: {
                        Text("Hello, Home")
                    })
            }
        }
        .navigationTitle("Home")
    }
}

struct LSSecondView: View {
    var body: some View {
        
        List {
            ForEach(0..<50) { index in
                NavigationLink (
                    destination: LSDetailView(),
                    label: {
                        Text("Hello, Me")
                    })
            }
        }
        .navigationTitle("Me")
    }
}

struct LSDetailView: View {
    var body: some View {
        
        List {
            ForEach(0..<50) { index in
                Text("Hello, Detail")
            }
        }
        .navigationTitle("Detail")
        .navigationBarTitleDisplayMode(.inline)
    }
}



struct LSTabView_Previews: PreviewProvider {
    static var previews: some View {
        LSTabView()
            
    }
}
