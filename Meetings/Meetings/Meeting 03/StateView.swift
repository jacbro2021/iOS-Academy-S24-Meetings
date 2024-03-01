//
//  StateView.swift
//  Meetings
//
//  Created by jacob brown on 2/29/24.
//

import SwiftUI

struct StateView: View {
    
    @State private var isRed: Bool = false
    @State private var count: Int = 0
    
    var body: some View {
        ZStack {
            isRed ? Color.red : Color.white
            
            VStack {
                Text("\(count)")
                
                BindingView(count: $count)
                
                Button {
                    isRed.toggle()
                } label: {
                    HStack {
                        Text("Click me")
                            .font(.largeTitle)
                        Image(systemName: "paperplane")
                            .font(.largeTitle)
                            .foregroundStyle(.primary)
                    }
                }
                .foregroundStyle(.orange)
            }
        }
        .ignoresSafeArea()
    }
}

struct BindingView: View {
    
    @Binding var count: Int
    
    var body: some View {
        Button {
            count += 1
        } label: {
            Text("Binding View")
        }
    }
}

#Preview {
    StateView()
}
