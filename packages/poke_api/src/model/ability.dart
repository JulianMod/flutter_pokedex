import 'package:json_annotation/json_annotation.dart';

import 'species.dart';

@JsonSerializable()
class Ability {
  Ability({
    this.ability,
    this.isHidden,
    this.slot,
  });

  Species? ability;
  bool? isHidden;
  int? slot;

  factory Ability.fromJson(Map<String, dynamic> json) => _$AbilityFromJson(json);
}