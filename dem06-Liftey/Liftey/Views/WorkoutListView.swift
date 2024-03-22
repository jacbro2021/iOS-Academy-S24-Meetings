//
//  WorkoutListView.swift
//  Liftey
//
//  Created by AlecNipp on 2/28/23.
//

import SwiftUI

struct WorkoutListView: View {
    @StateObject var vm = WorkoutListViewModel()
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Liftey")
                            .font(.largeTitle)
                            .bold()
                        Spacer()
                        Button {
                            
                        } label: {
                            Image(systemName: "plus")
                                .font(.largeTitle)
                        }
                    }
                    ForEach($vm.workouts) { $workout in
                        NavigationLink {
                            WorkoutView(workout: $workout)
                        } label: {
                            WorkoutRowItemView(workout: workout)
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
        
    }
}

struct WorkoutListView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutListView()
    }
}
