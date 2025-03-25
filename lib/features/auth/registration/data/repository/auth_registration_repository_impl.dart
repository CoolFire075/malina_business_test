import 'package:malina_business_test/features/auth/registration/data/api/auth_registration_api.dart';
import 'package:malina_business_test/features/auth/registration/domain/models/auth_registration_info_data.dart';
import 'package:malina_business_test/features/auth/registration/presentation/mappers/auth_registration_model_mapper.dart';

import '../../domain/repository/auth_registration_repository.dart';
import '../mappers/auth_registration_mapper.dart';

class AuthRegistrationRepositoryImpl implements AuthRegistrationRepository {
  final AuthRegistrationApi _authRegistrationApi;
  final AuthRegistrationMapper _authRegistrationMapper;

  AuthRegistrationRepositoryImpl(this._authRegistrationApi, this._authRegistrationMapper);

  @override
  Future<AuthRegistrationInfoData?> registration() async {
    final data = await AuthRegistrationApi().registration();
    if(data == null) return null;
    return _authRegistrationMapper.mapAuthRegistrationData(data);
  }
}
