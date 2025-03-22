import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malina_business_test/core/navigation/capp_router.dart';

import 'malina/core/di/dependency_injection.dart';
import 'malina/features/home/presentation/bloc/home_cubit.dart';
import 'malina/core/navigation/malina_router.dart';

void main() {
  initDependencyInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:
      // AuthLoginPage()
      BlocProvider(
        create: (context) => HomeCubit(),
        child: CApp(cAppRouter: getIt()),
      ),
    );
  }
}



class CApp extends StatelessWidget {
  const CApp({super.key, required this.cAppRouter});

  final CappRouter cAppRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: cAppRouter.router.routeInformationProvider,
      routeInformationParser: cAppRouter.router.routeInformationParser,
      routerDelegate: cAppRouter.router.routerDelegate,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.red)),
      darkTheme: ThemeData(colorScheme: ColorScheme.dark()),
      // localizationsDelegates: const [
      //   S.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: S.delegate.supportedLocales,
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   final PageController _pageController = PageController(); // Контроллер для PageView
//
//   // Метод для обработки нажатий на элементы навигации
//   void _onItemTapped(int index, BuildContext context) {
//     _pageController.jumpToPage(index); // Переключение между страницами
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         controller: _pageController,
//         children: [
//           MainScreen(),
//           Center(child: Text('Поиск', style: TextStyle(fontSize: 24))),
//           Center(child: Text('Профиль', style: TextStyle(fontSize: 24))),
//           Center(child: Text('Профиль', style: TextStyle(fontSize: 24))),
//           Center(child: Text('Профиль', style: TextStyle(fontSize: 24))),
//         ],
//         physics: NeverScrollableScrollPhysics(), // Отключить свайпы
//       ),
//       bottomNavigationBar: SizedBox(
//         width: 320,
//         child: BottomNavigationBar(
//           onTap: (index) => _onItemTapped(index, context), // Обработка нажатий
//           items: [
//             // BottomNavigationBarItem(
//             //   icon: Icon(Icons.home),
//             //   label: 'Главная',
//             // ),
//             // BottomNavigationBarItem(
//             //   icon: Icon(Icons.list),
//             //   label: 'Главная',
//             // ),
//             // BottomNavigationBarItem(
//             //   icon: Icon(Icons.delete),
//             //   label: 'Главная',
//             // ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.search),
//               label: 'Поиск',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               label: 'Профиль',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
