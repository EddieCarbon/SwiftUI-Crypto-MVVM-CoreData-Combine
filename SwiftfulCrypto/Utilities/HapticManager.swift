//
//  HapticManager.swift
//  SwiftfulCrypto
//
//  Created by Jakub Tomiczek on 06/12/2023.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
