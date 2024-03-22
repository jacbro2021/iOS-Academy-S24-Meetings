//
//  WorkoutView.swift
//  Liftey
//
//  Created by AlecNipp on 2/27/23.
//

import SwiftUI

struct WorkoutView: View {
    @StateObject private var vm = WorkoutViewModel()
    @State private var showingSheet: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(vm.workout.exercises) { exercise in
                        ExerciseRowItemView(exercise: exercise)
                    }
                } header: {
                    Text("Exercises")
                }
            }
            .listStyle(.grouped)
            .navigationTitle(vm.workout.title)
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    HStack {
                        Button {
                            showingSheet.toggle()
                        } label: {
                            HStack {
                                Image(systemName: "plus.circle.fill")
                                Text("New Exercise")
                                    .bold()
                                    .font(.title3)
                            }
                        }
                        
                        Spacer()
                    }
                }
            }
            .sheet(isPresented: $showingSheet) {
                CreateExerciseView(vm: vm)
            }
        }
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
}
