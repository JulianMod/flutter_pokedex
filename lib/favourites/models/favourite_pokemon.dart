
class FavouritePokemon {
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

}