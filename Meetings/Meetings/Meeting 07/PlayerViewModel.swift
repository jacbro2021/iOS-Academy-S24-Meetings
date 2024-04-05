//
//  PlayerViewModel.swift
//  Meetings
//
//  Created by jacob brown on 4/4/24.
//

import Foundation

class PlayerViewModel: ObservableObject {
    var model: Player
        
    init(model: Player) {
        self.model = model
    }
        
    var fullName: String {
        return model.firstName + " " + model.lastName
    }
        
    var height: String {
        guard let feet = model.heightFeet else {
            return "No height data"
        }
        guard let inches = model.heightInches else {
            return "No height data"
        }
            
        return "\(feet) ft \(inches)"
    }
}
