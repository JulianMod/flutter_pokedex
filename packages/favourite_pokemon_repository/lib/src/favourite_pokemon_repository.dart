import 'package:pokemon_repository/pokemon_repository.dart';
import 'package:favourite_pokemon_repository/favourite_pokemon_repository.dart';


class FavouritePokemonRepository{
  FavouritePokemonRepository({PokemonRepository? pokemonRepository})
      : _pokemonRepository = pokemonRepository ?? PokemonRepository();

  final PokemonRepository _pokemonRepository;

  Future<FavouritePokemon?> getFavouritePokemon() async {
    final pokemon = await _pokemonRepository.getPokemon();

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