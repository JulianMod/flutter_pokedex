import 'package:equatable/equatable.dart';

class FavouritePokemon extends Equatable{
  const FavouritePokemon({
    required this.id,
    required this.name,
    required this.image,
  });

  final int? id;
  final String? name;
  final String? image;

  @override
  List<Object?> get props => [id, name, image];
}