//
//  EnvContentView.swift
//  NavigationDemo
//
//  Created by Joel Lacerda on 04/09/24.
//

import SwiftUI

class GlobalViewModel: ObservableObject {
    @Published var data = "Shared Data"
    
    deinit {
        print("GlobalViewModel foi desalocado")
    }
}

struct EnvContentView: View {
    @StateObject private var viewModel = GlobalViewModel()
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: EnvDetailView()) {
                Text("Go to Env Detail View")
            }
            .navigationTitle("Env")
        }
        .environmentObject(viewModel)
    }
}

struct EnvDetailView: View {
    @EnvironmentObject var viewModel: GlobalViewModel
    
    var body: some View {
        Text("Env Detail View with data: \(viewModel.data)")
            .onDisappear {
                print("EnvDetailView desapareceu")
            }
    }
}


#Preview {
    EnvContentView()
}
