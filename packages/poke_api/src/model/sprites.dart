import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Sprites {
  Sprites({
    this.backDefault,
    this.backFemale,
    this.backShiny,
    this.backShinyFemale,
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
    this.other,
    this.versions,
    this.animated,
  });

  String? backDefault;
  dynamic? backFemale;
  String? backShiny;
  dynamic? backShinyFemale;
  String? frontDefault;
  dynamic? frontFemale;
  String? frontShiny;
  dynamic? frontShinyFemale;
  Other? other;
  Versions? versions;
  Sprites? animated;

  factory Sprites.fromJson(Map<String, dynamic> json) => _$SpritesFromJson(json);

}