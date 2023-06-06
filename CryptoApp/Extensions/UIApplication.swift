//
//  UIApplication.swift
//  CryptoApp
//
//  Created by Саид-Насир Исмаилов on 2023/06/06.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
