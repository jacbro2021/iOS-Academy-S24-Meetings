//
//  Exercise.swift
//  Liftey
//
//  Created by AlecNipp on 2/27/23.
//

import Foundation

/// A struct that stores information about a particular exercise. Conforms to Identifiable, so it can be easily used with ForEach.
struct Exercise: Identifiable {
    let id = UUID()
    var name: String
    var reps: Int
    var sets: Int
    var weight: Int
}

extension Exercise {
    static var example: Exercise {
        Exercise(name: "Example", reps: 10, sets: 3, weight: 20)
    }
}

