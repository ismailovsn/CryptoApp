//
//  StatisticModel.swift
//  CryptoApp
//
//  Created by Саид-Насир Исмаилов on 2023/06/06.
//

import Foundation

struct StatisticModel: Identifiable {
    var id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?
    
    init(title: String, value: String, percentageChange: Double? = nil) {
        self.title = title
        self.value = value
        self.percentageChange = percentageChange
    }
}
