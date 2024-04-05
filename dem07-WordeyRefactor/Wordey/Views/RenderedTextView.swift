//
//  RenderedTextView.swift
//  Wordey
//
//  Created by AlecNipp on 10/10/22.
//

import SwiftUI

struct RenderedTextView: View {
    @ObservedObject var vm: WordeyViewModel
    
    /// This is the computed property that takes our raw text and returns an attributed string.
    /// The attributed string will have the markdown attributes (e.g., bold, strikethrough) applied
    // MARK: Don't worry too much about this logic
    private var renderedText: AttributedString {
        do {
            let rendered = try AttributedString(
                markdown: vm.wordSettings.rawText)
            return rendered
        } catch {
            return "Couldn't parse markdown!"
        }
    }
    
    var body: some View {
        /// In the end, Views are just structs. Here I store one in a variable called `out` and then apply a series of modifiers to it.
        /// The `out` variable will be returned as the `body` property of this view
        var out = Text(renderedText)
        out = out.font(.system(size: vm.wordSettings.fontSize))
        out = out.foregroundColor(vm.wordSettings.textColor.getColor())
        if vm.wordSettings.isBold {
            out = out.bold()
        }
        if vm.wordSettings.isItalicized {
            out = out.italic()
        }
        return out
        
    }
    
    
}

//struct RenderedTextView_Previews: PreviewProvider {
//    static var previews: some View {
//        RenderedTextView(rawText: , fontColor: <#FontColor#>, isBold: <#Bool#>, isItalicized: <#Bool#>, fontSize: <#CGFloat#>)
//    }
//}
