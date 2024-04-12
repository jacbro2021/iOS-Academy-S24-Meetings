//
//  PokemonView.swift
//  Pokeydex
//
//  Created by jacob brown on 4/11/24.
//

import SwiftUI

struct PokemonView: View {
    @StateObject var vm: PokemonViewModel

    var body: some View {
        VStack {
            Text(vm.name)
                .font(.largeTitle)

            HStack {
                AsyncImage(url: vm.pokemon.imageURL) { image in image
                    .resizable()
                    .scaledToFit()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 200)

                VStack {
                    Text(vm.height)
                    Text(vm.weight)
                    Text(vm.typeString)
                }
            }

            HStack(spacing: 100) {
                Button {
                    vm.getPrevPokemon()
                } label: {
                    Image(systemName: "chevron.left")
                }
                .padding()
                .background(.regularMaterial)
                .clipShape(Circle())

                Button {
                    vm.getNextPokemon()
                } label: {
                    Image(systemName: "chevron.right")
                }
                .padding()
                .background(.regularMaterial)
                .clipShape(Circle())
            }
        }
    }
}

#Preview {
    PokemonView(vm: PokemonViewModel(pokemon: .example))
}
