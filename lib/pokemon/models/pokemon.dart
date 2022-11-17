import 'package:equatable/equatable.dart';
import 'package:pokemon_repository/pokemon_repository.dart'
as pokemon_repository;

class Pokemon extends Equatable{
  const Pokemon({
    required this.id,
    required this.name,
    required this.image
  });

  static const empty = Pokemon(
      id: 0,
      name: '',
      image: ''
  );

  final int? id;
  final String? name;
  final String? image;

  factory Pokemon.fromRepository(pokemon_repository.Pokemon pokemon){
    return Pokemon(
        id: pokemon.id,
        name: pokemon.name,
        image: pokemon.image
    );
  }

  @override
  List<Object?> get props => [id, name, image];

  Pokemon copyWith({
    int? id,
    String? name,
    String? image
  }) {
    return Pokemon(
        id: id ?? this.id,
        name: name ?? this.name,
        image: image ?? this.image
    );
  }
}