import 'package:equatable/equatable.dart';
import 'package:favourite_pokemon_repository/favourite_pokemon_repository.dart' as favourite_pokemon_repository;

class FavouritePokemon extends Equatable{
  const FavouritePokemon({
    required this.id,
    required this.name,
    required this.image,
  });

  static const empty = FavouritePokemon(
      id: 0,
      name: '',
      image: '',
  );

  final int? id;
  final String? name;
  final String? image;

  factory FavouritePokemon.fromRepository(favourite_pokemon_repository.FavouritePokemon favouritePokemon){
    return FavouritePokemon(
        id: favouritePokemon.id,
        name: favouritePokemon.name,
        image: favouritePokemon.image,
    );
  }

  @override
  List<Object?> get props => [id, name, image];

  FavouritePokemon copyWith({
    int? id,
    String? name,
    String? image,
  }) {
    return FavouritePokemon(
        id: id ?? this.id,
        name: name ?? this.name,
        image: image ?? this.image,
    );
  }
}