import 'package:json_annotation/json_annotation.dart';

import 'species.dart';

@JsonSerializable()
class Type {
  Type({
    this.slot,
    this.type,
  });

  int? slot;
  Species? type;

  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);

}
