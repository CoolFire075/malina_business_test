import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:malina_business_test/core/network/constants.dart';

import '../bloc/home_cubit.dart';
import 'malina_bottom_nav_item.dart';

class MalinaBottomNavBar extends StatelessWidget {
  const MalinaBottomNavBar({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final currentPath = navigationShell.shellRouteContext.routerState.fullPath;
        final navItemsList = MalinaBottomNavItem.values.map((e) => e.path);
        debugPrint('list: ${navItemsList}?');
        debugPrint('route: ${currentPath}');
        if (!navItemsList.contains(currentPath)) return const SizedBox();
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 25,
          selectedItemColor: NetworkConstants.malinaColor,
          unselectedItemColor: NetworkConstants.customGreyColor,
          currentIndex: state.index,
          onTap: (index) {
            context.read<HomeCubit>().changeBottomNavItem(index);
            navigationShell.goBranch(index);
          },
          items: [
            // BottomNavigationBarItem(
            //     icon: Column(
            //       children: [
            //         SvgPicture.asset(
            //           'assets/icons/ic_lenta.svg',
            //           height: 25,
            //           width: 25,
            //         ),
            //       ],
            //     ),
            //     label: 'Home'),
            // BottomNavigationBarItem(
            //     icon: Container(
            //       height: 60,
            //       width: 60,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(10.0),
            //       ),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.end,
            //         children: [
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             children: [
            //               Padding(
            //                 padding: const EdgeInsets.only(bottom: 6.0),
            //                 child: Text(
            //                   name,
            //                   style: const TextStyle(
            //                     color: NetworkConstants.blackColor,
            //                     fontSize: 12,
            //                     fontWeight: FontWeight.w400,
            //                     fontFamily: "SFPro",
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ],
            //       ),
            //     ),
            //     label: 'Home'),
            //
            // BottomNavigationBarItem(
            //     icon: SvgPicture.asset(
            //       'assets/icons/ic_lenta.svg',
            //       height: 25,
            //       width: 25,
            //     ),
            //     label: 'Home'),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/ic_lenta.svg"),
              label: "Лента",
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.favorite),
              label: "Избранное",
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: NetworkConstants.malinaColor),
                child: SvgPicture.asset(
                  "assets/icons/ic_category.svg",
                  width: 26.5,
                  height: 26.5,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: "Профиль",
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.shopping_cart),
              label: "Корзина",
            ),
          ],
        );
      },
    );
  }
}
