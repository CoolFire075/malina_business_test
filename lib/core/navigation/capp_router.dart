import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:malina_business_test/core/navigation/routes/auth_login_route.dart';
import 'package:malina_business_test/core/navigation/routes/auth_registration_route.dart';
import 'package:malina_business_test/features/auth/registration/presentation/bloc/auth_registration_bloc.dart';
import 'package:malina_business_test/features/auth/registration/presentation/screen/auth_registration_page.dart';

import '../../features/auth/login/presentation/screen/auth_login_page.dart';
import '../di/dependency_injection.dart';

class CappRouter {
  final GoRouter _router = GoRouter(
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, child) => HomePage(navigationShell: child),
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AuthLoginRoute.name,
                pageBuilder: (context, state) => MaterialPage(
                  child: AuthLoginPage(),
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
                path: AuthRegistrationRoute.name,
                pageBuilder: (context, state) => MaterialPage(
                  child: BlocProvider(
                    create: (context) => getIt<AuthRegistrationBloc>(),
                    child: AuthRegistrationPage(),
                  ),
                ),
                // routes: [
                //   GoRoute(
                //     path: NoteRoute.name,
                //     pageBuilder: (context, state) {
                //       final idString = state.uri.queryParameters[NoteRoute.idKeyArg];
                //       final id = int.tryParse(idString ?? '');
                //       return MaterialPage(
                //         child: NotePage(
                //           id: id,
                //         ),
                //       );
                //     },
                //   ),
                // ],
              ),
            ],
          ),
          // StatefulShellBranch(
          //   routes: [
          //     GoRoute(
          //       path: ProfileRoute.name,
          //       pageBuilder: (context, state) => const MaterialPage(
          //         child: ProfilePage(),
          //       ),
          //       // routes: [
          //       //   GoRoute(
          //       //     path: LoginRoute.name,
          //       //     pageBuilder: (context, state) => const MaterialPage(
          //       //       child: LoginPage(),
          //       //     ),
          //       //     routes: [
          //       //       GoRoute(
          //       //         path: RegistrationRoute.name,
          //       //         pageBuilder: (context, state) => const MaterialPage(
          //       //           child: RegistrationPage(),
          //       //         ),
          //       //       ),
          //       //     ],
          //       //   )
          //       // ],
          //     ),
          //   ],
          // ),
          // StatefulShellBranch(
          //   routes: [
          //     GoRoute(
          //       path: ProfileRoute.name,
          //       pageBuilder: (context, state) => const MaterialPage(
          //         child: ProfilePage(),
          //       ),
          //     ),
          //   ],
          // ),
          // StatefulShellBranch(
          //   routes: [
          //     GoRoute(
          //       path: ProfileRoute.name,
          //       pageBuilder: (context, state) => const MaterialPage(
          //         child: ProfilePage(),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    ],
  );

  GoRouter get router => _router;
}
