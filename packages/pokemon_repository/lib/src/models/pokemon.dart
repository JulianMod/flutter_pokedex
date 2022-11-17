import 'package:equatable/equatable.dart';

class Pokemon extends Equatable{
  const Pokemon({
    required this.id,
    required this.name,
    required this.image
  });

  final int? id;
  final String? name;
  final String? image;

  @override
  List<Object?> get props => [id, name, image];
}