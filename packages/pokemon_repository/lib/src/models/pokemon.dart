import 'package:equatable/equatable.dart';

class Pokemon extends Equatable{
  const Pokemon({
    required this.id,
    required this.name,
    required this.image,
    this.isFavourite = false
  });

  final int? id;
  final String? name;
  final String? image;
  final bool isFavourite;

  @override
  List<Object?> get props => [id, name, image, isFavourite];
}