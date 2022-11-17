import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Other {
  Other({
    this.dreamWorld,
    this.home,
    this.officialArtwork,
  });

  DreamWorld? dreamWorld;
  Home? home;
  OfficialArtwork? officialArtwork;

  factory Other.fromJson(Map<String, dynamic> json) => _$OtherFromJson(json);

}