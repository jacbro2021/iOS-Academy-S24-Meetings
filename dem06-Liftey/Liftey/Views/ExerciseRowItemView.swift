//
//  ExerciseRowItemView.swift
//  Liftey
//
//  Created by AlecNipp on 2/27/23.
//

import SwiftUI

struct ExerciseRowItemView: View {
    let exercise: Exercise
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(exercise.name)
                .bold()
            Text("\(exercise.sets) x \(exercise.reps) x \(exercise.weight) lbs")
        }
    }
}

struct ExerciseRowItemView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseRowItemView(exercise: Exercise.example)
    }
}
