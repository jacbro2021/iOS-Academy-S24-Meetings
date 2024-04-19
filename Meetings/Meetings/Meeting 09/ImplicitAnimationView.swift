//
//  ImplicitAnimationView.swift
//  Meetings
//
//  Created by jacob brown on 4/19/24.
//

import SwiftUI

struct ImplicitAnimationView: View {
    @State private var scale: CGFloat = 1
    
    var body: some View {
        VStack {
            Button("Click me") {
                scale += 0.5
            }
            .scaleEffect(scale)
            .animation(.easeInOut(duration: 2), value: scale)
        }
    }
}

#Preview {
    ImplicitAnimationView()
}
