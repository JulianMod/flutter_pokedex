import 'package:poke_api/poke_api.dart' hide Pokemon;
import 'package:pokemon_repository/pokemon_repository.dart';

class PokemonRepository{
  PokemonRepository({PokeApiClient? pokeApiClient})
      : _pokeApiClient = pokeApiClient ?? PokeApiClient();

  final PokeApiClient _pokeApiClient;

  List favouritePokemons = [];

  Future<Pokemon> getPokemon(String name) async {
    final pokemonAPI = await _pokeApiClient.getPokemon(name: name);

    final pokemon = Pokemon(
        id: pokemonAPI.id,
        name: pokemonAPI.name,
        image: pokemonAPI.sprites?.frontDefault
    );
    return pokemon;
  }

  void addToFavourite(dynamic pokemon) => favouritePokemons.add(pokemon);

  List getFavourite() => favouritePokemons;
}