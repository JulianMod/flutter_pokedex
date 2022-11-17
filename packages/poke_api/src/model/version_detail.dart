import 'package:json_annotation/json_annotation.dart';

import 'species.dart';

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