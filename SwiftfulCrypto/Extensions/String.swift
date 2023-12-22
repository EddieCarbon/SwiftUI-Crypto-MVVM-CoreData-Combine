//
//  String.swift
//  SwiftfulCrypto
//
//  Created by Jakub Tomiczek on 22/12/2023.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
