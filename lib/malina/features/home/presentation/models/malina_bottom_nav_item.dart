import '../../../../core/navigation/routes/basket_route.dart';
import '../../../../core/navigation/routes/home_route.dart';
import '../../../../core/navigation/routes/profile_route.dart';

enum MalinaBottomNavItem {
  notesList(path: MainScreenRoute.name),
  reminders(path: ProfileRoute.name),
  profile(path: BasketRoute.name);

  final String path;

  const MalinaBottomNavItem({required this.path});
}
