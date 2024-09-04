//
//  StackContentView.swift
//  NavigationDemo
//
//  Created by Joel Lacerda on 04/09/24.
//

import SwiftUI

struct StackContentView: View {
    @State private var path = [Destination]()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Button("Go to Stack Detail View") {
                    path.append(.stackDetailView)
                }
            }
            .navigationDestination(for: Destination.self) { destination in
                switch destination {
                case .stackDetailView:
                    StackDetailView()
                }
            }
            .navigationTitle("Stack")
        }
    }
}

enum Destination: Hashable {
    case stackDetailView
}

struct StackDetailView: View {
    var body: some View {
        Text("Stack Detail View")
            .onDisappear {
                print("StackDetailView desapareceu")
            }
    }
}

#Preview {
    StackContentView()
}
