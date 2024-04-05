//
//  Enums.swift
//  Wordey
//
//  Created by AlecNipp on 10/10/22.
//

import Foundation
import SwiftUI

/// A helper enum dedicated to listing the set of possible font colors. It contains the necessary functionality for working with a Picker (e.g. CaseIterable, hashable)
enum FontColor: CaseIterable {
    case black, blue, green, red
    func getColor() -> Color {
        switch self {
        case .red:
            return Color.red
        case .black:
            return Color.black
        case .blue:
            return Color.blue
        case .green:
            return Color.green
        }
    }
    
    var stringValue: String {
        switch self {
        case .red:
            return "Red"
        case .black:
            return "Black"
        case .blue:
            return "Blue"
        case .green:
            return "Green"
        }
    }
    
}
