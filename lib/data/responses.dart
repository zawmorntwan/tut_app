// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
part 'responses.g.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "message")
  String? message;
}

@JsonSerializable()
class CustomerResponse{
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "numberOfNotification")
  int? numberOfNotification;

  CustomerResponse(this.id, this.name, this.numberOfNotification);
}

@JsonSerializable()
class ContactsResponse{
  @JsonKey(name: "phone")
  String? phone;
  @JsonKey(name: "link")
  String? link;
  @JsonKey(name: "email")
  String? email;

  ContactsResponse(this.phone, this.link, this.email);
}

@JsonSerializable()
class AuthenticationResponse extends BaseResponse{
  @JsonKey(name: "customer")
  CustomerResponse? customer;
  @JsonKey(name: "contact")
  ContactsResponse? contact;

  AuthenticationResponse(this.customer, this.contact);
  // from json

  // to json
}