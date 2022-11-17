import 'package:poke_api/poke_api.dart' hide Pokemon;
import 'package:pokemon_repository/pokemon_repository.dart';

class PokemonRepository{
  PokemonRepository({PokeApiClient? pokeApiClient})
      : _pokeApiClient = pokeApiClient ?? PokeApiClient();

  final PokeApiClient _pokeApiClient;

  Future<Pokemon> getPokemon(String name) async {
    final pokemon = await _pokeApiClient.getPokemon(name: name);

    return Pokemon(
        id: pokemon.id,
        name: pokemon.name,
        image: pokemon.sprites?.frontDefault
    );
  }
}