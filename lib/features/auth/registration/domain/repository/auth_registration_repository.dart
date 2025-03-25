import 'package:malina_business_test/features/auth/registration/domain/models/auth_registration_info_data.dart';

abstract class AuthRegistrationRepository {
  Future<AuthRegistrationInfoData?> registration();
}