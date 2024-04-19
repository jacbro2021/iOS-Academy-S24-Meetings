//
//  ExplicitAnimationView.swift
//  Meetings
//
//  Created by jacob brown on 4/19/24.
//

import SwiftUI

struct ExplicitAnimationView: View {
    @State private var scale: CGFloat = 1
    
    var body: some View {
        VStack {
            Button("Click me") {
                withAnimation(.easeInOut(duration: 2)) {
                    scale += 0.5
                }
            }
            .scaleEffect(scale)
        }
    }
}

#Preview {
    ExplicitAnimationView()
}
