
import 'package:malina_business_test/core/navigation/capp_router.dart';

import '../navigation/malina_router.dart';
import 'dependency_injection.dart';

void initCoreModule() {
  // getIt.registerSingleton(NotesDatabase());
  getIt.registerSingleton(CappRouter());
}
