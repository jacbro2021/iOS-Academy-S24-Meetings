//
//  ExerciseView.swift
//  Liftey
//
//  Created by AlecNipp on 2/27/23.
//

import SwiftUI

struct ExerciseView: View {
    @Binding var exercise: Exercise
    var body: some View {
        Form {
            Section("Exercise Name") {
                TextField("Enter text", text: $exercise.name)
            }
            Section("Details") {
                Stepper("**Reps:** \(exercise.reps)", value: $exercise.reps)
                Stepper("**Sets:** \(exercise.sets)", value: $exercise.sets)
                HStack {
                    Text("**Weight:**")
                    TextField("Weight", text: Binding(
                        get: { String(exercise.weight) },
                        set: { exercise.weight = Int($0) ?? 0 }
                    ))
                    .textFieldStyle(.roundedBorder)
                    .fixedSize()
                    Text("lbs")
                }
            }
        }
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView(exercise: .constant(.example))
    }
}
