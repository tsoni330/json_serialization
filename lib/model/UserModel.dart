import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'UserModel.g.dart';

@JsonSerializable()
/*
* JsonSerializable() this is annotation. It tell the build_runner
* to generate the code. Build runner analize the User class and it
* generate the code in UserModel.g.dart file. Don't worry about the error.
* Error will gone when you run command
*/

class User{
  String? name;
  String? email;
  User(this.name,this.email);

  factory User.fromJson(Map<String,dynamic> json)=>_$UserFromJson(json);
  /*
  * Write everything same as i write. Don't worry about error. Build runner
  * make class Which name is _$UserFormJson. _ is for private
  */

  Map<String,dynamic> toJson() => _$UserToJson(this);

  /*
  * Now run this command
  * dart run build_runner build --delete-conflicting-putputs
  */
}
