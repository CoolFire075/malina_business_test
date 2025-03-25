// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_registration_info_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthRegistrationInfoData _$AuthRegistrationInfoDataFromJson(
        Map<String, dynamic> json) =>
    AuthRegistrationInfoData(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$AuthRegistrationInfoDataToJson(
        AuthRegistrationInfoData instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
