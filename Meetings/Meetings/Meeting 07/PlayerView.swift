//
//  PlayerView.swift
//  Meetings
//
//  Created by jacob brown on 4/4/24.
//

import SwiftUI

struct PlayerView: View {
    @StateObject private var vm = PlayerViewModel(model: .example)
    
    var body: some View {
        VStack {
            Text(vm.fullName)
            Text(vm.height)
        }
    }
}

#Preview {
    PlayerView()
}
