import 'package:malina_business_test/features/auth/registration/data/api/auth_registration_api.dart';
import 'package:malina_business_test/features/auth/registration/data/mappers/auth_registration_mapper.dart';
import 'package:malina_business_test/features/auth/registration/data/repository/auth_registration_repository_impl.dart';
import 'package:malina_business_test/features/auth/registration/domain/auth_registration_interactor.dart';
import 'package:malina_business_test/features/auth/registration/domain/repository/auth_registration_repository.dart';
import 'package:malina_business_test/features/auth/registration/presentation/bloc/auth_registration_bloc.dart';
import 'package:malina_business_test/features/auth/registration/presentation/mappers/auth_registration_model_mapper.dart';

import '../../../../core/di/dependency_injection.dart';


void initAuthRegistrationModule() {
  getIt.registerLazySingleton(() => AuthRegistrationApi());
  getIt.registerFactory(() => AuthRegistrationMapper());
  getIt.registerLazySingleton<AuthRegistrationRepository>(
          () => AuthRegistrationRepositoryImpl(getIt(), getIt()));
  getIt.registerFactory(() => AuthRegistrationInteractor(repository: getIt()));

  // getIt.registerLazySingleton(() => AuthRegistrationInteractor(repository: getIt()));
  getIt.registerFactory(() => AuthRegistrationModelMapper());
  getIt.registerFactory<AuthRegistrationBloc>(() => AuthRegistrationBloc(getIt(), getIt()));

}
