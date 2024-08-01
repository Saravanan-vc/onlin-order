import 'package:json_annotation/json_annotation.dart';

part 'sentmodel.g.dart';

@JsonSerializable()
class Sentmodel {
  @JsonKey(name: 'sname')
  String? name;

  @JsonKey(name: 'simage')
  String? image;

  @JsonKey(name: 'spiece')
  String? piece;

  @JsonKey(name: 'sprice')
  int? price;

  @JsonKey(name: 'soldprice')
  int? oldprice;

  Sentmodel({
    this.image,
    this.name,
    this.oldprice,
    this.piece,
    this.price,
  });

  factory Sentmodel.fromjson(Map<String,dynamic> json)=> _$SentmodelFromJson(json);
}
