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

  products({
    this.gram,
    this.name,
    this.price,
  });

  factory products.fromjson(Map<String, dynamic> json) => _$productsFromJson(json);

  Map <String,dynamic> tjson() => _$productsToJson(this);
}
