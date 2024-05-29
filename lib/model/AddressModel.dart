import 'package:json_serializable/json_serializable.dart';

import 'package:json_annotation/json_annotation.dart';

import 'UserModel.dart';

part 'AddressModel.g.dart';

@JsonSerializable(explicitToJson: true)
/*
* JsonSerializable() this is annotation. It tell the build_runner
* to generate the code. Build runner analize the User class and it
* generate the code in AddressModel.g.dart file. Don't worry about the error.
* Error will gone when you run command
*/

class Address{
  String? address;
  User? user;
  Address(this.address,this.user);

  factory Address.fromJson(Map<String,dynamic>json)=> _$AddressFromJson(json);

  /*
  * Write everything same as i write. Don't worry about error. Build runner
  * make class Which name is _$AddressFormJson. _ is for private
  */

  Map<String,dynamic> toJson()=>_$AddressToJson(this);
/*
  * Now run this command
  * dart run build_runner build --delete-conflicting-outputs
  */
}