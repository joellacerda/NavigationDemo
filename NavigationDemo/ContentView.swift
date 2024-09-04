//
//  ContentView.swift
//  NavigationDemo
//
//  Created by Joel Lacerda on 04/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            SafeContentView()
                .tabItem {
                    Label("Safe", systemImage: "1.circle")
                }
            
            StackContentView()
                .tabItem {
                    Label("Stack", systemImage: "2.circle")
                }
            
            EnvContentView()
                .tabItem {
                    Label("Env", systemImage: "3.circle")
                }
        }
    }
}

#Preview {
    ContentView()
}
