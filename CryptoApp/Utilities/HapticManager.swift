//
//  HapticManager.swift
//  CryptoApp
//
//  Created by Саид-Насир Исмаилов on 2023/06/10.
//

import Foundation
import SwiftUI

class HapticManager {
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
