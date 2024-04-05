//
//  HorizontalTextAlignment.swift
//  Wordey
//
//  Created by AlecNipp on 10/10/22.
//

import Foundation
import SwiftUI

/// A helper enumeration used to aid in the construction of a Picker for text alignment. Since the built-in SwiftUI Alignment type is not hashable (and has no String representation),
///  this enum acts as an interface between the text alignment Picker and the Alignment class
enum HorizontalTextAlignment: String, CaseIterable {
    case leading = "Leading"
    case center = "Center"
    case trailing = "Trailing"
    
    /// Returns the equivalent value for the built-in Alignment type
    public var systemAlignment: HorizontalAlignment {
        switch self {
        case .leading:
            return .leading
        case .center:
            return .center
        case .trailing:
            return .trailing
        }
    }
}

