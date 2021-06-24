//
//  LSAllstarView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/22.
//

import SwiftUI

let coloredNavAppearance = UINavigationBarAppearance()

struct LSAllstarView: View {
    
    @State private var selectedIndex: Int = 1
    
    init() {
        coloredNavAppearance.configureWithOpaqueBackground()
        coloredNavAppearance.backgroundColor = UIColor(red: 0xcf/255.0, green: 0x2c/255.0, blue: 0x3b/255.0, alpha: 1)
        coloredNavAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredNavAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = coloredNavAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance
        
        
    }
    
    var body: some View {
        
        TabView(selection: $selectedIndex, content:  {
            
            LSAllStarNewsView().tag(0)
            
            LSAllStarShopView().tag(1)
            
            LSAllStarCartView().tag(2)
            
            LSAllStarPersonView().tag(3)
            
        })
        .accentColor(Color(red: 0xcf/255.0, green: 0x2c/255.0, blue: 0x3b/255.0))
        
    }
}




struct LSAllStarNewsView: View {
    
    var body: some View {
        NavigationView {
            
            List {
                Image("ALS-Ballestra2_Webslider_1920x1920")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("dwdwdw_1920x1920")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                VStack {
                    HStack {
                        Image("TZ8-2_EN")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image("1160D_EN")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    HStack {
                        Image("RB1-YS_DE")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image("519KAP_EN")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
            }
            .navigationTitle("Allstar")
        }
        .tabItem {
            Label("News", systemImage: "newspaper")
        }
    }
}


struct LSAllStarShopView: View {
    
    var body: some View {
        NavigationView {
            List {
                
                Image("700px ALS_1565_Weapons_web")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text("WEAPONS")
                    .font(.system(size: 20))
                    .bold()
                    .padding([.top], 10)

                ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom), content: {
                    Image("Waffen_Florett")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("FOIL").font(.title2).padding()
                })
                .padding([.top], 10)
                
                ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom), content: {
                    Image("Waffen_Degen")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("EPEE").font(.title2).padding()
                })
                .padding([.top], 10)

                ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom), content: {
                    Image("Waffen_Saebel")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("SABRE").font(.title2).padding()
                })
                .padding([.top], 10)

                ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom), content: {
                    Image("Plastikwaffen")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("PLASTIC WEAPONS").font(.title2).padding()
                })
                .padding([.top], 10)

            }
            .navigationTitle("Shop")
        }
        .tabItem {
            Label("Shop", systemImage: "bag")
        }

    }
}

struct LSAllStarCartView: View {
    
    var body: some View {
        NavigationView {
            List {
                Text("Allstar")
            }
            .navigationTitle("Cart")
        }
        .tabItem {
            Label("Cart", systemImage: "cart")
        }
    }
}

struct LSAllStarPersonView: View {
    
    var body: some View {
        NavigationView {
            List {
                Text("Allstar")
            }
            .navigationTitle("User")
        }
        .tabItem {
            Label("Person", systemImage: "person")
        }
    }
}


struct LSAllstarView_Previews: PreviewProvider {
    static var previews: some View {
        LSAllstarView()
            .preferredColorScheme(.dark)
    }
}
