//
//  TabViewView.swift
//  Meetings
//
//  Created by jacob brown on 3/7/24.
//

import SwiftUI

struct TabViewView: View {
    var body: some View {
        TabView {
            SubView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                
            Text("Settings")
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
            
            Text("Settings")
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
            
            Text("Settings")
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
            
            Text("Settings")
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
            
            Text("Settings")
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct SubView: View {
    var body: some View {
        VStack {
            Image(systemName: "house")
                .font(.largeTitle)
        }
    }
}

#Preview {
    TabViewView()
}
