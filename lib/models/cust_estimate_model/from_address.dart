import 'package:json_annotation/json_annotation.dart';

part 'from_address.g.dart';

@JsonSerializable()
class FromAddress {
  String? firstName;
  String? lastName;
  String? fromAddress;
  String? fromLocality;
  String? fromCity;
  String? fromState;
  String? pincode;

  FromAddress({
    this.firstName,
    this.lastName,
    this.fromAddress,
    this.fromLocality,
    this.fromCity,
    this.fromState,
    this.pincode,
  });

  factory FromAddress.fromJson(Map<String, dynamic> json) {
    return _$FromAddressFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FromAddressToJson(this);
}
