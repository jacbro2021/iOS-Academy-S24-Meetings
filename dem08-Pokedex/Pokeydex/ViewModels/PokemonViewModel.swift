//
//  PokemonViewModel.swift
//  Pokeydex
//
//  Created by jacob brown on 4/11/24.
//

import Foundation

class PokemonViewModel: ObservableObject {
    @Published var pokemon: Pokemon
    
    init(pokemon: Pokemon) {
        self.pokemon = pokemon
    }
    
    var typeString: String {
        pokemon.type.map { $0.rawValue }.joined(separator: ", ")
    }
    
    var name: String {
        pokemon.name + " #" + pokemon.num
    }
    
    var height: String {
        "Height: " + pokemon.height
    }
    
    var weight: String {
        "Weight: " + pokemon.weight
    }
    
    func getNextPokemon() {
        if let newPokemon = PokedexService.example.getPokemonById(id: pokemon.id + 1) {
            pokemon = newPokemon
        }
    }
    
    func getPrevPokemon() {
        if let newPokemon = PokedexService.example.getPokemonById(id: pokemon.id - 1) {
            pokemon = newPokemon
        }
    }
}
