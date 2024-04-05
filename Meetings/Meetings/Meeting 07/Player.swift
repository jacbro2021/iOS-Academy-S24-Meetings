//
//  Player.swift
//  Meetings
//
//  Created by jacob brown on 4/4/24.
//

import Foundation

struct Player: Codable {
    let id: Int
    let firstName, lastName, position: String
    let heightFeet, heightInches, weightPounds: Int?
    let team: Team
}

struct Team: Codable {
    let id: Int
    let abbreviation, city, conference, division: String
    let fullName, name: String
}

extension Player {
    static let example = Player(id: 237,
                         firstName: "Lebron",
                         lastName: "James",
                         position: "F",
                         heightFeet: nil,
                         heightInches: 8,
                         weightPounds: 250,
                         team: Team(id: 14,
                                    abbreviation: "LAL",
                                    city: "Los Angeles",
                                    conference: "West",
                                    division: "Pacific",
                                    fullName: "Los Angeles Lakers",
                                    name: "Lakers"))
}
