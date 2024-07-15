import 'package:json_annotation/json_annotation.dart';

part 'modelc.g.dart';

@JsonSerializable()
class banner {
  @JsonKey(name: "image")
  String? image;
  banner({
    this.image,
  });
  factory banner.fromjson(Map<String, dynamic> json) => _$bannerFromJson(json);
}
