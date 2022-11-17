import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class VersionDetail {
  VersionDetail({
    this.rarity,
    this.version,
  });

  int? rarity;
  Species? version;

  factory VersionDetail.fromJson(Map<String, dynamic> json) => _$VersionDetailFromJson(json);
}