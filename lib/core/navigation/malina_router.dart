import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:malina_business_test/basket_page.dart';
import 'package:malina_business_test/core/navigation/routes/basket_route.dart';
import 'package:malina_business_test/core/navigation/routes/home_route.dart';
import 'package:malina_business_test/core/navigation/routes/profile_route.dart';
import 'package:malina_business_test/core/navigation/routes/scaner_route.dart';
import 'package:malina_business_test/scanner_qr.dart';

import '../../features/home/presentation/screen/home_page.dart';
import '../../profile_page.dart';

class MalinaRouter {
  final GoRouter _router = GoRouter(
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, child) => HomePage(navigationShell: child),
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: MainScreenRoute.name,
                pageBuilder: (context, state) => const MaterialPage(
                  child: MainScreen(),
                ),
                routes: [
                  GoRoute(
                    path: ScannerRoute.name,
                    pageBuilder: (context, state) {
                      return MaterialPage(
                        child: QRScannerPage(),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: BasketRoute.name,
                pageBuilder: (context, state) => const MaterialPage(
                  child: BasketPage(),
                ),
                // routes: [
                //   GoRoute(
                //     name: ReminderDetailsRoute.name,
                //     path: ReminderDetailsRoute.name,
                //     pageBuilder: (context, state) {
                //       final stringDate = state.uri.queryParameters[ReminderDetailsRoute.idKeyArg];
                //       final date = DateTime.tryParse(stringDate ?? '');
                //       print('ROUTER STRING_DATE => $stringDate');
                //       print('ROUTER DATE => $date');
                //       return MaterialPage(
                //         child: RemindersDetailsPage(
                //           date: date,
                //         ),
                //       );
                //     },
                //   ),
                // ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: ProfileRoute.name,
                pageBuilder: (context, state) => const MaterialPage(
                  child: ProfilePage(),
                ),
                // routes: [
                //   GoRoute(
                //     path: LoginRoute.name,
                //     pageBuilder: (context, state) => const MaterialPage(
                //       child: LoginPage(),
                //     ),
                //     routes: [
                //       GoRoute(
                //         path: RegistrationRoute.name,
                //         pageBuilder: (context, state) => const MaterialPage(
                //           child: RegistrationPage(),
                //         ),
                //       ),
                //     ],
                //   )
                // ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: ProfileRoute.name,
                pageBuilder: (context, state) => const MaterialPage(
                  child: ProfilePage(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: ProfileRoute.name,
                pageBuilder: (context, state) => const MaterialPage(
                  child: ProfilePage(),
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );

  GoRouter get router => _router;
}
