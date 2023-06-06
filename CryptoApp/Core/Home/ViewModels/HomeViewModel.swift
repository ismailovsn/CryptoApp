//
//  HomeViewModel.swift
//  CryptoApp
//
//  Created by Саид-Насир Исмаилов on 2023/06/04.
//

import Combine
import Foundation

class HomeViewModel: ObservableObject {
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    @Published var searchText: String = ""
    
    private let dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()
    
    
    init() {
        addSubscribers()
    }
    
    func addSubscribers() {
        dataService.$allCoins
            .sink { (returnedCoins) in
                self.allCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
}
