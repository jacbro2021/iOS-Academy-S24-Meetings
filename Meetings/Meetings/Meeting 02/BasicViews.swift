//
//  BasicViews.swift
//  Meetings
//
//  Created by jacob brown on 2/22/24.
//

import SwiftUI

struct BasicViews: View {
    
    
    let greeting: String = "Hello iOS Academy!"
    
    var body: some View {
        VStack {
            // Display text
            Text("\(greeting) Welcome to meeting 2")
           
            // Display icons from SF Symbols. Can scale icons
            // using the font modifier
            Image(systemName: "folder")
                .font(.largeTitle)
           
            // display custom images and resize them using
            // the resizable modifier.
            Image("logo")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
        }
    }
}

#Preview {
    BasicViews()
}
