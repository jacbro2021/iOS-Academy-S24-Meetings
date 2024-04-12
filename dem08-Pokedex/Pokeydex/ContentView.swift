//
//  ContentView.swift
//  Pokeydex
//
//  Created by jacob brown on 4/11/24.
//

import SwiftUI

struct ContentView: View {
    var pokeydex = PokedexService.example

    var body: some View {
        NavigationStack {
            List {
                ForEach(pokeydex.pokemon) { pokemon in
                    NavigationLink {
                        PokemonView(vm: PokemonViewModel(pokemon: pokemon))
                    } label: {
                        Text(pokemon.name)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
