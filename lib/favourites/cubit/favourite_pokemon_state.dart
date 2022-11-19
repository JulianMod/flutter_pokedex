part of 'favourite_pokemon_cubit.dart';

enum FavouritePokemonStatus {initial, loading, success, failure}

extension FavouritePokemonStatusX on FavouritePokemonStatus {
  bool get isInitial => this == FavouritePokemonStatus.initial;
  bool get isLoading => this == FavouritePokemonStatus.loading;
  bool get isSuccess => this == FavouritePokemonStatus.success;
  bool get isFailure => this == FavouritePokemonStatus.failure;
}

class FavouritePokemonState extends Equatable{
  const FavouritePokemonState({
    this.status = FavouritePokemonStatus.initial,
    FavouritePokemon? favouritePokemon
  }) : favouritePokemon = favouritePokemon ?? FavouritePokemon.empty;

  final FavouritePokemonStatus status;
  final FavouritePokemon favouritePokemon;

  FavouritePokemonState copyWith({
    FavouritePokemonStatus? status,
    FavouritePokemon? favouritePokemon
  }) {
    return FavouritePokemonState(
        status: status ?? this.status,
        favouritePokemon: favouritePokemon ?? this.favouritePokemon
    );
  }

  @override
  List<Object?> get props => [status, favouritePokemon];
}