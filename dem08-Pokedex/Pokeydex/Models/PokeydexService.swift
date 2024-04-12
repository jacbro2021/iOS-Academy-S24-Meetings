//
//  PokeydexService.swift
//  Pokeydex
//
//  Created by jacob brown on 4/11/24.
//

import Foundation

class PokedexService {
    static let example = PokedexService()
    
    var pokedex: Pokedex
    
    /// Initializer that decodes the Pokedex JSON and stores it in the pokedex variable
    init() {
        let url = Bundle.main.url(forResource: "pokedex-data", withExtension: "json")!
        
        let data = try! Data(contentsOf: url)
        
        let decoder = JSONDecoder()
        
        self.pokedex = try! decoder.decode(Pokedex.self, from: data)
    }
    
    /// Computed property that returns a list of the pokemon
    var pokemon: [Pokemon] {
        pokedex.pokemon
    }
        
    /// Function that searches the list of Pokemon for a pokemon with the given id. Returns nil if not found.
    func getPokemonById(id: Int) -> Pokemon? {
        pokedex.pokemon.first(where: { $0.id == id })
    }
}
