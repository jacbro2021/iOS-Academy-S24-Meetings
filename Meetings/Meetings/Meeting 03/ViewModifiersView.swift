//
//  ViewModifiersView.swift
//  Meetings
//
//  Created by jacob brown on 2/29/24.
//

import SwiftUI

struct ViewModifiersView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .padding()
            .background(.red)
        
        Text("Hello, World!")
            .background(.blue)
            .padding()
            .background(.yellow)
        
        Image("logo")
            .resizable()
            .padding()
    }
}

#Preview {
    ViewModifiersView()
}
