import 'package:json_annotation/json_annotation.dart';

import 'generation_VII/dream_world.dart';
import 'generation_VII/home.dart';

@JsonSerializable()
class GenerationVii {
  GenerationVii({
    this.icons,
    this.ultraSunUltraMoon,
  });

  DreamWorld? icons;
  Home? ultraSunUltraMoon;

  factory GenerationVii.fromJson(Map<String, dynamic> json) => _$GenerationViiFromJson(json);

}