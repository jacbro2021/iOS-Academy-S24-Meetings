//
//  ReferenceTypeView.swift
//  Meetings
//
//  Created by jacob brown on 3/21/24.
//

import SwiftUI

// Step 2: Add a conformance to your class for the ObservableObject protocol.
class User: ObservableObject {
    // Step 3: For any variables that you would normally mark with the @State property wrapper if they were stored in the view, use the @Published property wrapper inside the class.
    @Published var name: String = "Doug"
    var username: String = "GoinHam420"
}

struct ReferenceTypeView: View {
    // Step 1: use the StateObject property wrapper
    // when you assign the variable to an instance of the class.
    @StateObject private var user = User()
    
    var body: some View {
        VStack {
            Text("User: \(user.name)")
            Text("Username: \(user.username)")
            Button("Change to Bill") {
                user.name = "Bill"
            }
        }
    }
}

#Preview {
    ReferenceTypeView()
}
