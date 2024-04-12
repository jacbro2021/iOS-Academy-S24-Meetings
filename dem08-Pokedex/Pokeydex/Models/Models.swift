//
//  Models.swift
//  Pokeydex
//
//  Created by jacob brown on 4/11/24.
//

import Foundation

struct Pokedex: Codable {
    let pokemon: [Pokemon]
}

// MARK: - Pokemon
struct Pokemon: Codable, Identifiable {
    let id: Int
    let num, name: String
    let img: String
    let type: [TypeElement]
    let height, weight, candy: String
    let candyCount: Int?
    let egg: Egg
    let spawnChance, avgSpawns: Double
    let spawnTime: String
    let multipliers: [Double]?
    let weaknesses: [TypeElement]
    let nextEvolution, prevEvolution: [Evolution]?

    enum CodingKeys: String, CodingKey {
        case id, num, name, img, type, height, weight, candy
        case candyCount = "candy_count"
        case egg
        case spawnChance = "spawn_chance"
        case avgSpawns = "avg_spawns"
        case spawnTime = "spawn_time"
        case multipliers, weaknesses
        case nextEvolution = "next_evolution"
        case prevEvolution = "prev_evolution"
    }
}

enum Egg: String, Codable {
    case notInEggs = "Not in Eggs"
    case omanyteCandy = "Omanyte Candy"
    case the10KM = "10 km"
    case the2KM = "2 km"
    case the5KM = "5 km"
}

// MARK: - Evolution
struct Evolution: Codable {
    let num, name: String
}

enum TypeElement: String, Codable {
    case bug = "Bug"
    case dark = "Dark"
    case dragon = "Dragon"
    case electric = "Electric"
    case fairy = "Fairy"
    case fighting = "Fighting"
    case fire = "Fire"
    case flying = "Flying"
    case ghost = "Ghost"
    case grass = "Grass"
    case ground = "Ground"
    case ice = "Ice"
    case normal = "Normal"
    case poison = "Poison"
    case psychic = "Psychic"
    case rock = "Rock"
    case steel = "Steel"
    case water = "Water"
}

extension Pokemon {
    static var example: Pokemon {
            Pokemon(id: 1, num: "001", name: "Bulbasaur", img: "http://www.serebii.net/pokemongo/pokemon/001.png", type: [
                TypeElement(rawValue: "Grass")!,
                TypeElement(rawValue: "Poison")!
            ], height: "0.71 m", weight: "6.9 kg", candy: "Bulbasaur Candy", candyCount: 25, egg: Egg(rawValue: "2 km")!, spawnChance: 0.69, avgSpawns: 69, spawnTime: "20.00", multipliers: [1.58], weaknesses: [
                TypeElement(rawValue:"Fire")!,
                TypeElement(rawValue:"Ice")!,
                TypeElement(rawValue:"Flying")!,
                TypeElement(rawValue: "Psychic")!
              ], nextEvolution: [
              Evolution(num: "002", name: "Ivysaur"),
              Evolution(num: "003", name: "Venusaur")
              ], prevEvolution: nil)
        }
    
    var imageURL: URL? {
        let http = img
        let https = "https" + http.dropFirst(4)
        return URL(string: https)
    }
}
