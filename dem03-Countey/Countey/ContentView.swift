//
//  ContentView.swift
//  Countey
//
//  Created by jacob brown on 2/29/24.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Double = 0
    @State private var maxCount: Double = 10
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.purple
                    .ignoresSafeArea()
               
                Color.yellow
                    .ignoresSafeArea()
                    .opacity(count / maxCount)
                
                VStack {
                    HStack {
                        Text("\(Int(count)) drinks")
                            .font(.largeTitle)
                            .bold()
                            
                        Spacer()
                            
                        NavigationLink {
                            SettingsView(maxCount: $maxCount)
                        } label: {
                            Image(systemName: "gear")
                                .font(.largeTitle)
                                .bold()
                        }
                        .foregroundStyle(.primary)
                    }
                    .padding(.horizontal)
                        
                    Spacer()
                    Text("🔑")
                        .scaleEffect(count / maxCount)
                        .font(.system(size: 300))
                    Spacer()
                        
                    HStack {
                        Button {
                            withAnimation {
                                if count > 0 {
                                    count -= 1
                                }
                            }
                        } label: {
                            Text("-")
                                .font(.system(size: 100))
                        }
                        .foregroundStyle(.primary)
                            
                        Spacer()
                            
                        Button {
                            withAnimation {
                                if count < maxCount {
                                    count += 1
                                }
                            }
                        } label: {
                            Text("+")
                                .font(.system(size: 100))
                        }
                        .foregroundStyle(.primary)
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

struct SettingsView: View {
    
    @Binding var maxCount: Double
    
    var body: some View {
        Form {
            Section {
                Stepper("\(Int(maxCount))", value: $maxCount)
            }
        }
    }
}

#Preview {
    ContentView()
}
