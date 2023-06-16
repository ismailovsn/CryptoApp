//
//  SettingsView.swift
//  CryptoApp
//
//  Created by Саид-Насир Исмаилов on 2023/06/16.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss
    
    let defaultURL = URL(string: "https://www.google.com")!
    let repositoryURL = URL(string: "https://github.com/ismailovsn/CryptoApp")!
    let githubURL = URL(string: "https://github.com/ismailovsn")!
    let coinGeckoURL = URL(string: "https://www.coingecko.com/en/api/documentation")!
    
    var body: some View {
        NavigationView {
            List {
                appInfoSection
                coinGeckoSection
                developerSection
                applicationSection
            }
            .font(.headline)
            .tint(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    xMarkButton
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
extension SettingsView {
    private var xMarkButton: some View {
        Button {
            dismiss()
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
        }
    }
    
    private var appInfoSection: some View {
        Section("App Info") {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This is made using MVVM Architecture, Combine and Core Data. The project is Open Source and is available via the link below.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("GitHub Repo 🤖", destination: repositoryURL)
        }
    }
    
    private var coinGeckoSection: some View {
        Section("CoinGecko") {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The CryptoCurrency data that is used in this app comes from a free API from CoinGecko! prices may be slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit CoinGecko 🦎", destination: coinGeckoURL)
        }
    }
    
    private var developerSection: some View {
        Section("CoinGecko") {
            VStack(alignment: .leading) {
                Text("This app was developed by Said-Nasir. It uses SwiftUI and is written on Swift. The project benefits from multi-threading, publishers/subscribers, and data persistence.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("My GitHub", destination: githubURL)
        }
    }
    
    private var applicationSection: some View {
        Section("Application") {
            Link("Terms of Service", destination: defaultURL)
            Link("Privacy Police", destination: defaultURL)
            Link("Company Website", destination: defaultURL)
            Link("Learn More", destination: defaultURL)
        }
    }
}
