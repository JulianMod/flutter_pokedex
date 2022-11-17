import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class GenerationIii {
  GenerationIii({
    this.emerald,
    this.fireredLeafgreen,
    this.rubySapphire,
  });

  Emerald? emerald;
  Gold? fireredLeafgreen;
  Gold? rubySapphire;

  factory GenerationIii.fromJson(Map<String, dynamic> json) => _$GenerationIiiFromJson(json);

}