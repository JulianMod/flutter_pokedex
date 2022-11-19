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

      final favouritePokemon = await _favouritePokemonRepository.getFavouritePokemon(name);

      emit(state.copyWith(
          status: FavouritePokemonStatus.success,
          favouritePokemon: FavouritePokemon.fromRepository(favouritePokemon!)
      ));
    } on Exception {
      emit(state.copyWith(status: FavouritePokemonStatus.failure));
    }
  }

  Future<void> refreshFavouritePokemon() async {
    if(!state.status.isSuccess) return;
    if(state.favouritePokemon == FavouritePokemon.empty) return;
    try {
      final favouritePokemon = await _favouritePokemonRepository.getFavouritePokemon(state.favouritePokemon.name!);

      state.copyWith(
          status: FavouritePokemonStatus.success,
          favouritePokemon: FavouritePokemon.fromRepository(favouritePokemon!)
      );
    } on Exception {
      emit(state);
    }
  }
}