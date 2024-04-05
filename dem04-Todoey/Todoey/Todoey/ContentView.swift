//
//  ContentView.swift
//  Todoey
//
//  Created by jacob brown on 3/7/24.
//

import SwiftUI

struct TodoItem: Identifiable {
    let id = UUID()
    let title: String
    var completed: Bool = false
}

struct ContentView: View {
    @State private var currentInput: String = ""
    @State private var todoItems: [TodoItem] = []
    
    var body: some View {
        List {
            Section {
                TextField("Walk the dog...", text: $currentInput)
                    .onSubmit {
                        if currentInput != "" {
                            todoItems.append(TodoItem(title: currentInput))
                            currentInput = ""
                        }
                    }
            } header: {
                Text("Enter todo item")
            }
            
            if todoItems.isEmpty {
                ContentUnavailableView("Nothing to do", systemImage: "checklist.checked")
            } else {
                Section {
                    ForEach($todoItems) { $item in
                        Button {
                            item.completed.toggle()
                        } label: {
                            HStack {
                                Image(systemName: item.completed ? "circle.fill" : "circle")
                                    .foregroundStyle(.orange)
                                
                                Text(item.title)
                            }
                        }
                        .foregroundStyle(.primary)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
