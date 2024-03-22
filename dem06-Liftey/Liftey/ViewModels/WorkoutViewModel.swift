//
//  WorkoutViewModel.swift
//  Liftey
//
//  Created by AlecNipp on 2/27/23.
//

import Foundation

class WorkoutViewModel: ObservableObject {
    // Workout that holds all of the existing exercises for our workout.
    @Published var workout: Workout = .example

    // Published properties used for adding a new exercise.
    @Published var newExerciseName: String = "" {
        // 'didset' is a feature in swift called a property observer.
        // You can think of this as a function that is called everytime
        // the value of this variable is changed. Here we are re-evaluating
        // to determine if the submit button should be disabled every time that
        // the value of one of these properties changes.
        didSet {
            validateProperties()
        }
    }

    @Published var newExerciseReps: Int = 1 {
        didSet {
            validateProperties()
        }
    }

    @Published var newExerciseSets: Int = 1 {
        didSet {
            validateProperties()
        }
    }

    @Published var newExerciseWeight: String = "" {
        didSet {
            validateProperties()
        }
    }

    // Published property to disable the 'add exercise' button in the
    // create exercise view.
    @Published var addButtonDisabled: Bool = true

    // append an Exercise to the workout.
    func appendExercise() {
        workout.exercises.append(Exercise(name: newExerciseName,
                                          reps: newExerciseReps,
                                          sets: newExerciseSets,
                                          weight: Int(newExerciseWeight) ?? 0))
    }

    // Function used to validate each of the new exercise properties.
    func validateProperties() {
        if newExerciseName == "" ||
            newExerciseReps < 1 ||
            newExerciseSets < 1 ||
            Int(newExerciseWeight) ?? -1 < 0
        {
            addButtonDisabled = true
        } else {
            addButtonDisabled = false
        }
    }
}
