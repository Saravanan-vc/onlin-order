import 'package:json_annotation/json_annotation.dart';
part 'kitchemodel.g.dart';
@JsonSerializable()
class Kitchemodel {
  @JsonKey(name: "kname")
  String? Kname;

  @JsonKey(name: "kimage")
  String? kimage;

  @JsonKey(name: "kprice")
  int? kprice;

  @JsonKey(name: "koldprice")
  int? kolprice;

  @JsonKey(name: "kpiece")
  String? kpiece;

  Kitchemodel({
    this.Kname,
    this.kimage,
    this.kolprice,
    this.kpiece,
    this.kprice,
  });

  factory Kitchemodel.fromjson(Map<String, dynamic> json) =>
      _$KitchemodelFromJson(json);

}
