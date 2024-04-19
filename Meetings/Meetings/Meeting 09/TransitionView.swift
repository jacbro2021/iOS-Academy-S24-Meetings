//
//  AnimationView.swift
//  Meetings
//
//  Created by jacob brown on 4/18/24.
//

import SwiftUI

struct TransitionView: View {
    @State var showText = false

    var body: some View {
        VStack {
            if self.showText {
                Text("HELLO WORLD")
                    .transition(.slide.combined(with: .blurReplace))
            }
            
            Button {
                withAnimation {
                    self.showText.toggle()
                }
            } label: {
                Text("Change me")
            }
        }
    }
}

#Preview {
    TransitionView()
}
