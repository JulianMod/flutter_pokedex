import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class GameIndex {
  GameIndex({
    this.gameIndex,
    this.version,
  });

  int? gameIndex;
  Species? version;

  factory GameIndex.fromJson(Map<String, dynamic> json) => _$GameIndexFromJson(json);
}