
import '../navigation/malina_router.dart';
import 'dependency_injection.dart';

void initCoreModule() {
  // getIt.registerSingleton(NotesDatabase());
  getIt.registerSingleton(MalinaRouter());
}
