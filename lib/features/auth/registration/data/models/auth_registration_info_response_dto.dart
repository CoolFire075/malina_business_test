import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_registration_info_response_dto.g.dart';

@JsonSerializable()
class AuthRegistrationInfoResponseDto extends Equatable {
  @JsonKey(name: 'access_token', required: false, includeIfNull: false)
  final String accessToken;
  @JsonKey(name: 'refresh_token', required: false, includeIfNull: false)
  final String refreshToken;

  const AuthRegistrationInfoResponseDto({
    required this.accessToken,
    required this.refreshToken,
  });

  factory AuthRegistrationInfoResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AuthRegistrationInfoResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AuthRegistrationInfoResponseDtoToJson(this);

  @override
  List<Object?> get props => [
        accessToken,
        refreshToken,
      ];
}
