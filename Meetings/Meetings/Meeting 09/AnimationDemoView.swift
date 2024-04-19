//
//  AnimationDemoView.swift
//  Meetings
//
//  Created by jacob brown on 4/18/24.
//

import SwiftUI

struct AnimationDemoView: View {
    @State private var isExpanded = false
    
    var body: some View {
        VStack {
            Button {
                withAnimation(.easeInOut(duration: 3)) {
                    isExpanded.toggle()
                }
            } label: {
                VStack {
                    HStack {
                        Text("Show more")
                        Image(systemName: isExpanded ? "chevron.down" : "chevron.right")
                    }
                    if isExpanded {
                        Text("Hello!")
                            .transition(.scale.combined(with: .blurReplace))
                    }
                }
            }
            .foregroundStyle(.primary)
            .padding()
            .background(.gray)
            .clipShape(RoundedRectangle(cornerRadius: 15))
        }
    }
}

#Preview {
    AnimationDemoView()
}
