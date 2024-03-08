//
//  NavigationStackView.swift
//  Meetings
//
//  Created by jacob brown on 3/7/24.
//

import SwiftUI

struct NavigationStackView: View {
    

    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    VStack {
                        Text("Child View")
                    }
                        .navigationTitle("Sub View")
                        .navigationBarTitleDisplayMode(.inline)
                } label: {
                    Text("Click me")
                }
            }
            .navigationTitle("Root")
        }
    }
}

#Preview {
    NavigationStackView()
}
