//
//  String.swift
//  CryptoApp
//
//  Created by Саид-Насир Исмаилов on 2023/06/15.
//

import Foundation

extension String {
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
