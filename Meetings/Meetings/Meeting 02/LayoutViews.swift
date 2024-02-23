//
//  LayoutViews.swift
//  Meetings
//
//  Created by jacob brown on 2/22/24.
//

import SwiftUI

struct LayoutViews: View {
    var body: some View {
        // Layout child views vertically with VStack.
        // Use the alignment argument to align child views..
        VStack(alignment: .leading) {
            Spacer()
           
            // Layout child views horizontally with HStack.
            HStack {
                Image(systemName: "paperplane")
                    .font(.largeTitle)
                Image(systemName: "heart")
                    .font(.largeTitle)
            }
            
            Spacer()
            
           // Stack views on top of one another with ZStack.
            ZStack {
                Circle()
                    .foregroundStyle(.orange)
                Text("Big orange circle")
            }
           
            // User spacers for dynamic spacing
            Spacer()
           
            // Using padding to add space between views or push views
            // away from the sides of the screen.
            Text("Hello iOS Academy")
                .font(.largeTitle)
                .padding(.vertical, 70)
            Text("Longer string of text so you can ")
            
            Spacer()
        }
    }
}

#Preview {
    LayoutViews()
}
