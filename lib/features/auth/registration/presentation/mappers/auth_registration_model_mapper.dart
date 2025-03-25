import 'package:malina_business_test/features/auth/registration/domain/models/auth_registration_info_data.dart';

import '../models/auth_registration_info_model.dart';

class AuthRegistrationModelMapper {
  AuthRegistrationInfoModel mapAuthRegistrationModel(AuthRegistrationInfoData domain) {
    return AuthRegistrationInfoModel(
      accessToken: domain.accessToken,
      refreshToken: domain.refreshToken,
    );
  }
}
