//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Саид-Насир Исмаилов on 2023/06/02.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
