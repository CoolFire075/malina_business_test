import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_registration_info_model.g.dart';

@JsonSerializable()
class AuthRegistrationInfoModel extends Equatable {
  @JsonKey(name: 'access_token', required: false, includeIfNull: false)
  final String? accessToken;
  @JsonKey(name: 'refresh_token', required: false, includeIfNull: false)
  final String? refreshToken;

  const AuthRegistrationInfoModel({
    this.accessToken,
    this.refreshToken,
  });
  factory AuthRegistrationInfoModel.fromJson(Map<String, dynamic> json) =>
      _$AuthRegistrationInfoModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthRegistrationInfoModelToJson(this);

  @override
  List<Object?> get props => [
        accessToken,
        refreshToken,
      ];
}

