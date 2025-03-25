
import 'package:malina_business_test/core/navigation/capp_router.dart';

import 'dependency_injection.dart';


void initNavigationModule(){
  getIt.registerSingleton(CappRouter());
}