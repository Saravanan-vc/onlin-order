import 'package:json_annotation/json_annotation.dart';

part 'modelproducts.g.dart';

@JsonSerializable()
class electricproducts {
  @JsonKey(name: "Ename")
  String? name;

  @JsonKey(name: "Eprice")
  int? price;

  @JsonKey(name: "Eoldprice")
  int? oldprice;

  @JsonKey(name: "Epiece")
  String? piece;

  @JsonKey(name: "Eimage")
  String? image;

  electricproducts({
    this.image,
    this.name,
    this.oldprice,
    this.piece,
    this.price,
  });

  factory electricproducts.fromjson(Map<String, dynamic> json) =>
      _$electricproductsFromJson(json);
}
