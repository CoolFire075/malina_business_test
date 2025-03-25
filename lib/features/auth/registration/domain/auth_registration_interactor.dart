import 'package:malina_business_test/features/auth/registration/domain/models/auth_registration_info_data.dart';
import 'package:malina_business_test/features/auth/registration/domain/repository/auth_registration_repository.dart';

class AuthRegistrationInteractor {
  final AuthRegistrationRepository _repository;

  AuthRegistrationInteractor({required AuthRegistrationRepository repository})
      : _repository = repository;

  Future<AuthRegistrationInfoData?> registration() async {
   return _repository.registration();
  }
}
