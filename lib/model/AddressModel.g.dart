// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AddressModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      json['address'] as String?,
      json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'address': instance.address,
      'user': instance.user?.toJson(),
    };
