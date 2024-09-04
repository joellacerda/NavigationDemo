//
//  SafeContentView.swift
//  NavigationDemo
//
//  Created by Joel Lacerda on 04/09/24.
//

import SwiftUI

class SafeViewModel: ObservableObject {
    // Nenhuma referência à View, evitando referências circulares
    deinit {
        print("SafeViewModel foi desalocado")
    }
}

struct SafeContentView: View {
    @StateObject private var viewModel = SafeViewModel()
    
    var body: some View {
            NavigationView {
                NavigationLink(destination: SafeDetailView(viewModel: viewModel)) {
                    Text("Go to Safe Detail View")
                }
                .navigationTitle("Safe")
        }
    }
}

struct SafeDetailView: View {
    @ObservedObject var viewModel: SafeViewModel
    
    var body: some View {
        Text("Safe Detail View")
            .onDisappear {
                print("SafeDetailView desapareceu")
            }
    }
}

#Preview {
    SafeContentView()
}
