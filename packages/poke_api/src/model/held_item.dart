import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class HeldItem {
  HeldItem({
    this.item,
    this.versionDetails,
  });

  Species? item;
  List<VersionDetail>? versionDetails;
  factory HeldItem.fromJson(Map<String, dynamic> json) => _$HeldItemFromJson(json);
}