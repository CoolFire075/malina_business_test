import 'package:get_it/get_it.dart';
import 'package:malina_business_test/core/di/navigation_module.dart';
import 'package:malina_business_test/features/auth/registration/di/auth_registration_module.dart';

final getIt = GetIt.instance;

void initDependencyInjection() {
  initNavigationModule();
  initAuthRegistrationModule();
}
