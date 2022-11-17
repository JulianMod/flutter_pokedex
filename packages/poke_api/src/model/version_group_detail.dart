import 'package:json_annotation/json_annotation.dart';

import 'species.dart';

@JsonSerializable()
class VersionGroupDetail {
  VersionGroupDetail({
    this.levelLearnedAt,
    this.moveLearnMethod,
    this.versionGroup,
  });

  int? levelLearnedAt;
  Species? moveLearnMethod;
  Species? versionGroup;

  factory VersionGroupDetail.fromJson(Map<String, dynamic> json) => _$VersionGroupDetailFromJson(json);
}