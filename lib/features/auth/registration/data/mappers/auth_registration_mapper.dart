import 'package:malina_business_test/features/auth/registration/data/models/auth_registration_info_response_dto.dart';
import 'package:malina_business_test/features/auth/registration/domain/models/auth_registration_info_data.dart';

class AuthRegistrationMapper {
  AuthRegistrationInfoData mapAuthRegistrationData(AuthRegistrationInfoResponseDto dto) {
    return AuthRegistrationInfoData(
      accessToken: dto.accessToken,
      refreshToken: dto.refreshToken,
    );
  }
}