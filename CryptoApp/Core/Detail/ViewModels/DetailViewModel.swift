//
//  DetailViewModel.swift
//  CryptoApp
//
//  Created by Саид-Насир Исмаилов on 2023/06/12.
//

import Combine
import Foundation

class DetailViewModel: ObservableObject {
    private let coinDetailService: CoinDetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        coinDetailService.$coinDetails
            .sink { (returnedCoinDetails) in
                print("Recieved coin detail data")
                print(returnedCoinDetails)
            }
            .store(in: &cancellables)
    }
}
