//
//  ContentView.swift
//  instagramey
//
//  Created by jacob brown on 2/22/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var liked: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Image("pic")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                Text("_ishaanb")
                    .font(.title3)
                    .bold()
                
                Spacer()
            }
            .padding(.leading, 10)
            
            Image("pic")
                .resizable()
                .scaledToFit()
            
            HStack {
                Button {
                    liked.toggle()
                } label: {
                    Image(systemName: liked ? "heart.fill" : "heart")
                        .font(.title)
                }
                .foregroundStyle(liked ? .red : .primary)
                
                Button {
                    
                } label: {
                    Image(systemName: "message")
                        .font(.title)
                }
                .foregroundStyle(.primary)
                
                Button {
                    
                } label: {
                    Image(systemName: "paperplane")
                        .font(.title)
                }
                .foregroundStyle(.primary)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "bookmark")
                        .font(.title)
                }
                .foregroundStyle(.primary)
            }
            .padding(.horizontal, 10)
            
            Text("33 likes")
                .bold()
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
            
            Text("**_ishaanb** This is a really cool hot air balloon")
                .padding(.horizontal, 10)
                
        }
    }
}

#Preview {
    ContentView()
}
