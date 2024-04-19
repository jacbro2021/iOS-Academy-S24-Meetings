//
//  AccessiblityView.swift
//  Meetings
//
//  Created by jacob brown on 4/18/24.
//

import SwiftUI

struct AccessiblityView: View {
    @State var fontSize: CGFloat = 10.0

    var body: some View {
        VStack {
           Text("Hello World")
                .foregroundStyle(.red)
                .font(.largeTitle)

            Image("zebra")
                .resizable()
                .frame(width: 100, height: 100)
                .accessibilityLabel("Zebra")

            Button {
                fontSize += 20
            } label: {
                Text("Click here")
            }
            .padding()

            VStack {
                Text("Hello again")
                    .font(.title3)
            }
        }
    }
}

#Preview {
    AccessiblityView()
}
