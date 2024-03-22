//
//  Workout.swift
//  Liftey
//
//  Created by AlecNipp on 2/27/23.
//

import Foundation

/// A struct that stores information for a workout. It has a title, notes, and a list of exercises
struct Workout {
    var title: String
    var notes: String
    var exercises: [Exercise]
}

extension Workout {
    static var example: Workout {
        Workout(title: "My Workout", notes: "",
                exercises:
                [Exercise(name: "Chest press", reps: 4, sets: 4, weight: 80),
                 Exercise(name: "French press", reps: 4, sets: 4, weight: 80),
                 Exercise(name: "Military press", reps: 4, sets: 4, weight: 80)])
    }
}
