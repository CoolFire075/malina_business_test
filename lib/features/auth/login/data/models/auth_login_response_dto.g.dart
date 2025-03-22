// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_login_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthLoginResponseDto _$AuthLoginResponseDtoFromJson(
        Map<String, dynamic> json) =>
    AuthLoginResponseDto(
      name: json['name'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$AuthLoginResponseDtoToJson(
        AuthLoginResponseDto instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.password case final value?) 'password': value,
    };
