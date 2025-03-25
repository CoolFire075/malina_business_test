// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_registration_info_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthRegistrationInfoResponseDto _$AuthRegistrationInfoResponseDtoFromJson(
        Map<String, dynamic> json) =>
    AuthRegistrationInfoResponseDto(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$AuthRegistrationInfoResponseDtoToJson(
        AuthRegistrationInfoResponseDto instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
