//
//  WorkoutRowItemView.swift
//  Liftey
//
//  Created by AlecNipp on 2/28/23.
//

import SwiftUI

struct WorkoutRowItemView: View {
    let workout: Workout
    var body: some View {
        HStack {
            VStack {
                Text(workout.title)
            }
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundColor(.secondary)
        }
    }
}

struct WorkoutRowItemView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutRowItemView(workout: .example)
    }
}
