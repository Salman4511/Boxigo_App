import 'package:json_annotation/json_annotation.dart';

part 'to_address.g.dart';

@JsonSerializable()
class ToAddress {
  String? firstName;
  String? lastName;
  String? toAddress;
  String? toLocality;
  String? toCity;
  String? toState;
  String? pincode;

  ToAddress({
    this.firstName,
    this.lastName,
    this.toAddress,
    this.toLocality,
    this.toCity,
    this.toState,
    this.pincode,
  });

  factory ToAddress.fromJson(Map<String, dynamic> json) {
    return _$ToAddressFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ToAddressToJson(this);
}
