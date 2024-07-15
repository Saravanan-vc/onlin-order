import 'package:json_annotation/json_annotation.dart';
part 'modelp.g.dart';

@JsonSerializable()
class products {
  @JsonKey(name: "gram")
  String? gram;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "image")
  String? image;
  @JsonKey(name: "price")
  int? price;
  @JsonKey(name: "oldprice")
  int? oldprice;
  @JsonKey(name: "totalstock")
  int? totalstock;
  products({
    this.gram,
    this.name,
    this.price,
    this.image,
    this.oldprice,
    this.totalstock,
  });

  factory products.fromjson(Map<String, dynamic> json) =>
      _$productsFromJson(json);

  Map<String, dynamic> tjson() => _$productsToJson(this);
}
