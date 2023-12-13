//
//  ContentView.swift
//  SwiftUI TabView
//
//  Created by Hakan Sezer on 13.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            RedOneView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            BlueTwoView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            GreenThreeView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Cart")
                }
        }
        .accentColor(.red)
        .toolbarColorScheme(.light, for: .tabBar)
    }
}

#Preview {
    ContentView()
}
