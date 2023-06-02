//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Саид-Насир Исмаилов on 2023/06/02.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
