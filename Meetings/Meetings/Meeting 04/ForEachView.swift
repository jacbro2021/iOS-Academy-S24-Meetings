//
//  ForEachView.swift
//  Meetings
//
//  Created by jacob brown on 3/7/24.
//

import SwiftUI

struct Person: Identifiable {
    let id = UUID()
    let name: String
}

struct ForEachView: View {
    
    @State private var people: [Person] = [Person(name: "Morgan"), Person(name: "Meghan"), Person(name: "Alexandra")]
    
    var body: some View {
        List {
            ForEach($people) { $person in
                Section {
                    RosterItemView(name: person.name)
                } header: {
                    Text("Someone's name")
                }
            }
        }
    }
}

struct RosterItemView: View {
        let name: String
        var body: some View {
                Button {
                        print(name)
                } label: {
                        Text(name)
                }
        }
}

#Preview {
    ForEachView()
}
