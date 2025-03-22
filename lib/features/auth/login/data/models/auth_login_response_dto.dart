import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_login_response_dto.g.dart';

@JsonSerializable()
class AuthLoginResponseDto extends Equatable {
  @JsonKey(name: 'name', required: false, includeIfNull: false)
  final String? name;
  @JsonKey(name: 'password', required: false, includeIfNull: false)
  final String? password;

  const AuthLoginResponseDto({required this.name, required this.password});

  factory AuthLoginResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AuthLoginResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AuthLoginResponseDtoToJson(this);

  @override
  List<Object?> get props => [
        name,
        password,
      ];
}
