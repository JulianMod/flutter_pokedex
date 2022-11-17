import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Emerald {
  Emerald({
    this.frontDefault,
    this.frontShiny,
  });

  String? frontDefault;
  String? frontShiny;

  factory Emerald.fromJson(Map<String, dynamic> json) => _$EmeraldFromJson(json);

}