//
//  CreateExerciseView.swift
//  Liftey
//
//  Created by AlecNipp on 2/27/23.
//

import SwiftUI

struct CreateExerciseView: View {
    @ObservedObject var vm: WorkoutViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            Section("Exercise name") {
                TextField("Enter Name", text: $vm.newExerciseName)
            }
            
            Section("Details") {
                Stepper("**Sets:** \(vm.newExerciseSets)") {
                    vm.newExerciseSets += 1
                } onDecrement: {
                    if vm.newExerciseSets > 1 {
                        vm.newExerciseSets -= 1
                    }
                }
                
                Stepper("**Reps:** \(vm.newExerciseReps)") {
                    vm.newExerciseReps += 1
                } onDecrement: {
                    if vm.newExerciseReps > 1 {
                        vm.newExerciseReps -= 1
                    }
                }
                
                HStack {
                    Text("**Weight**:")
                    TextField("", text: $vm.newExerciseWeight)
                        .keyboardType(.numberPad)
                        .textFieldStyle(.roundedBorder)
                        .frame(maxWidth: 80)
                        .fixedSize()
                    Text("lbs")
                }
            }
            
            Section {
                Button {
                    vm.appendExercise()
                    dismiss.callAsFunction()
                    
                } label: {
                    Text("Create Exercise")
                }
                .disabled(vm.addButtonDisabled)
            }
        }
    }
}

struct CreateExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        CreateExerciseView(vm: WorkoutViewModel())
    }
}
