import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class GenerationV {
  GenerationV({
    this.blackWhite,
  });

  Sprites blackWhite;

  factory GenerationV.fromJson(Map<String, dynamic> json) => _$GenerationVFromJson(json);
}