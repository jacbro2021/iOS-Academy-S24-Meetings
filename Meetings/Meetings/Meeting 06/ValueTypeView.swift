//
//  ValueTypeView.swift
//  Meetings
//
//  Created by jacob brown on 3/21/24.
//

import SwiftUI

// Our ToDo Data Model
struct ToDoItem: Identifiable {
    var id = UUID()
    var text: String
    var isDone = false
}

struct ValueTypeView: View {
    @State private var textValue = ""
    @State private var todos = [ToDoItem(text: "Walk dog")]

    var body: some View {
        List {
            Section("Enter Todo") {
                TextField("Enter", text: $textValue)
            }
            .onSubmit {
                todos.append(ToDoItem(text: textValue))
                textValue = ""
            }

            Section("List") {
                ForEach(todos) { todo in
                    ToDoView(todo: todo)
                }
            }
            
            // Notice that when we mark a TodoItem as completed, only one of the lists updates. So how should you change things to fix this? (see other file)
            Section("List 2") {
                ForEach(todos) { todo in
                    ToDoView(todo: todo)
                }
            }
        }
    }
}

struct ToDoView: View {
    @State var todo: ToDoItem
    var body: some View {
        HStack {
            Button {
                todo.isDone.toggle()
            } label: {
                Image(systemName: todo.isDone ? "circle.fill" : "circle")
            }
            Text(todo.text)
        }
    }
}

#Preview {
    ValueTypeView()
}
