import 'package:json_annotation/json_annotation.dart';


part 'watchproducts.g.dart';
@JsonSerializable()
class Watchproduct {
  @JsonKey(name: "Ename")
  String? name;
  @JsonKey(name: "Epiece")
  String? piece;
  @JsonKey(name: "Eimage")
  String? image;
  @JsonKey(name: "Eprice")
  int? price;
  @JsonKey(name: "Eoldprice")
  int? oldprice;

  Watchproduct({
    this.image,
    this.name,
    this.oldprice,
    this.piece,
    this.price,
  });

  factory Watchproduct.formjson(Map<String, dynamic> json) =>
      _$WatchproductFromJson(json);
}
