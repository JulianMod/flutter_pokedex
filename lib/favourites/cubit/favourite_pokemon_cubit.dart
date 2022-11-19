import 'package:favourite_pokemon_repository/favourite_pokemon_repository.dart' hide FavouritePokemon;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_pokedex/favourites/models/favourite_pokemon.dart';

part 'favourite_pokemon_state.dart';

class FavouritePokemonCubit extends Cubit<FavouritePokemonState> {
  FavouritePokemonCubit(this._favouritePokemonRepository) : super(const FavouritePokemonState());

  final FavouritePokemonRepository _favouritePokemonRepository;

  Future<void> fetchFavouritePokemon(String? name) async {
    if (name == null || name.isEmpty) return;

    emit(state.copyWith(status:FavouritePokemonStatus.loading));

    try{

      final _futurePokemon = await _favouritePokemonRepository.getFavouritePokemon(name);

      final favouritePokemon = FavouritePokemon.fromRepository(_futurePokemon!);
      emit(state.copyWith(
          status: FavouritePokemonStatus.success,
          favouritePokemon: favouritePokemon
      ));
    } on Exception {
      emit(state.copyWith(status: FavouritePokemonStatus.failure));
    }
  }

/*  Future<void> refreshPokemon() async {
    if(!state.status.isSuccess) return;
    if(state.pokemon == Pokemon.empty) return;
    try {
      final pokemon = Pokemon.fromRepository(await _pokemonRepository.getPokemon(state.pokemon.name!),);

      state.copyWith(
          status: PokemonStatus.success,
          pokemon: pokemon
      );
    } on Exception {
      emit(state);
    }
  }*/
}