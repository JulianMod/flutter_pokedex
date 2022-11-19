import 'package:pokemon_repository/pokemon_repository.dart';
import 'package:favourite_pokemon_repository/favourite_pokemon_repository.dart';


class FavouritePokemonRepository{
  FavouritePokemonRepository({PokemonRepository? pokemonRepository})
      : _pokemonRepository = pokemonRepository ?? PokemonRepository();

  final PokemonRepository _pokemonRepository;

  Future<FavouritePokemon?> getFavouritePokemon(String name) async {
    final pokemon = await _pokemonRepository.getPokemon(name);

    if(pokemon.isFavourite){
      return FavouritePokemon(
          id: pokemon.id,
          name: pokemon.name,
          image: pokemon.image
      );
    } else {
      return null;
    }
  }
}