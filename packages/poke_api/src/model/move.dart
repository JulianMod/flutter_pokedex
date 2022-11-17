class Move {
  Move({
    this.move,
    this.versionGroupDetails,
  });

  Species move;
  List<VersionGroupDetail> versionGroupDetails;

  factory Move.fromJson(Map<String, dynamic> json) => _$MoveFromJson(json);
}