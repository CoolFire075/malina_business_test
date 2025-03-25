// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_registration_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthRegistrationInfoModel _$AuthRegistrationInfoModelFromJson(
        Map<String, dynamic> json) =>
    AuthRegistrationInfoModel(
      accessToken: json['access_token'] as String?,
      refreshToken: json['refresh_token'] as String?,
    );

Map<String, dynamic> _$AuthRegistrationInfoModelToJson(
        AuthRegistrationInfoModel instance) =>
    <String, dynamic>{
      if (instance.accessToken case final value?) 'access_token': value,
      if (instance.refreshToken case final value?) 'refresh_token': value,
    };
