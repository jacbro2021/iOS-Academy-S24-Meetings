//
//  VerticalTextAlignment.swift
//  Wordey
//
//  Created by AlecNipp on 10/10/22.
//

import Foundation
import SwiftUI

/// A helper enumeration used to aid in the construction of a Picker for text alignment. Since the built-in SwiftUI Alignment type is not hashable (and has no String representation),
///  this enum acts as an interface between the text alignment Picker and the Alignment class
enum VerticalTextAlignment: String, CaseIterable {
    case top = "Top"
    case center = "Center"
    case bottom = "Bottom"
    
    /// Returns the equivalent value for the built-in Alignment type
    public var systemAlignment: VerticalAlignment {
        switch self {
        case .top:
            return .top
        case .center:
            return .center
        case .bottom:
            return .bottom
        }
    }
}


