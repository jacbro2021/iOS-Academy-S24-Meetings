//
//  Word.swift
//  Wordey
//
//  Created by jacob brown on 4/4/24.
//

import Foundation

struct Word {
    var rawText: String = "**Hi**"
    var isBold: Bool = false
    var isItalicized: Bool = false
    var textColor: FontColor = .black
    var hAlignment: HorizontalTextAlignment = .center
    var vAlignment: VerticalTextAlignment = .center
    var fontSize: CGFloat = 16
}
