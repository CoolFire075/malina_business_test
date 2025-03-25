import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_registration_info_data.g.dart';

@JsonSerializable()
class AuthRegistrationInfoData extends Equatable {
  @JsonKey(name: 'access_token', required: false, includeIfNull: false)
  final String accessToken;
  @JsonKey(name: 'refresh_token', required: false, includeIfNull: false)
  final String refreshToken;

  const AuthRegistrationInfoData({
    required this.accessToken,
    required this.refreshToken,
  });

  factory AuthRegistrationInfoData.fromJson(Map<String, dynamic> json) =>
      _$AuthRegistrationInfoDataFromJson(json);

  Map<String, dynamic> toJson() => _$AuthRegistrationInfoDataToJson(this);

  @override
  List<Object?> get props => [
        accessToken,
        refreshToken,
      ];
}
