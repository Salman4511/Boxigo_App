import 'package:json_annotation/json_annotation.dart';

part 'meta.g.dart';

@JsonSerializable()
class Meta {
  bool? hasType;
  String? selectType;
  bool? hasVariation;
  bool? hasSize;

  Meta({this.hasType, this.selectType, this.hasVariation, this.hasSize});

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}
