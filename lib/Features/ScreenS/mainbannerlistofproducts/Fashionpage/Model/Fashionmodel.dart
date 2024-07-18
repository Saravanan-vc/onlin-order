import 'package:json_annotation/json_annotation.dart';


part 'Fashionmodel.g.dart';
@JsonSerializable()
class Fashionproduct {
  @JsonKey(name: "Fname")
  String? name;
  @JsonKey(name: "Fpiece")
  String? piece;
  @JsonKey(name: "Fimage")
  String? image;
  @JsonKey(name: "Fprice")
  int? price;
  @JsonKey(name: "Foldprice")
  int? oldprice;

  Fashionproduct({
    this.image,
    this.name,
    this.oldprice,
    this.piece,
    this.price,
  });

  factory Fashionproduct.formjson(Map<String, dynamic> json) =>
      _$FashionproductFromJson(json);
}
