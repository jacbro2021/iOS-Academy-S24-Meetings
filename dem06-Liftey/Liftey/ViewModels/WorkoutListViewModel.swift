//
//  WorkoutListViewModel.swift
//  Liftey
//
//  Created by AlecNipp on 2/28/23.
//

import Foundation

class WorkoutListViewModel: ObservableObject {
    @Published var workouts: [Workout] = [.example]
    @Published var showingSheet = false
    
}
