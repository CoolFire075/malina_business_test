import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/network/constants.dart';
import '../bloc/home_cubit.dart';
import '../category_list.dart';
import '../category_models.dart';
import '../models/malina_bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: MalinaBottomNavBar(
        navigationShell: navigationShell,
      ),
      // _Body(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categoryList = CategoryList().categoryList;
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                _HomeSearchWidget(),
                _ScannerShowButtonWidget(),
                _HomeFoodImageWidget(),
                _HomeBeautyImageWidget(),
                _TextWidget(),
                _CategoryWidgetList(categoryList: categoryList),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 8.0, right: 8.0),
                  child: Container(
                    color: Colors.blue,
                    width: double.infinity,
                    height: 100,
                    child: const Center(
                      child: Text("data"),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _CategoryWidgetList extends StatelessWidget {
  const _CategoryWidgetList({
    super.key,
    required this.categoryList,
  });

  final List<CategoryModels> categoryList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...categoryList.map(
              (e) => e.name.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: _CategoryWidget(name: e.name, color: e.color))
                  : const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}

class _CategoryWidget extends StatelessWidget {
  const _CategoryWidget({super.key, required this.name, required this.color});

  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86,
      width: 86,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 6.0),
                child: Text(
                  name,
                  style: const TextStyle(
                    color: NetworkConstants.blackColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SFPro",
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _TextWidget extends StatelessWidget {
  const _TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
        padding: const EdgeInsets.only(
          top: 30.0,
          left: 20.0,
        ),
        child: SizedBox(
          height: 22,
          width: 114,
          child: Text(
            "Скоро в Malina",
            style: TextStyle(
              fontSize: 17,
              color: NetworkConstants.blackColor,
              fontWeight: FontWeight.w500,
              fontFamily: "SFPro",
            ),
          ),
        ),
      )
    ]);
  }
}

class _HomeBeautyImageWidget extends StatelessWidget {
  const _HomeBeautyImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: NetworkConstants.beautyCustomPinkColor),
        width: 350,
        height: 170,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                "assets/images/im_beauty.png",
              ),
            ),
            Positioned(
              top: 23,
              left: 23,
              child: Text(
                "Еда",
                style: TextStyle(
                  fontSize: 22,
                  color: NetworkConstants.blackColor,
                  fontWeight: FontWeight.w600,
                  fontFamily: "SFPro",
                ),
              ),
            ),
            Positioned(
              top: 55,
              left: 17,
              child: Text(
                """Салон красоты
    и товары""",
                style: TextStyle(
                  fontSize: 16,
                  color: NetworkConstants.blackColor,
                  fontWeight: FontWeight.w300,
                  fontFamily: "SFPro",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HomeFoodImageWidget extends StatelessWidget {
  const _HomeFoodImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
        ),
        width: 350,
        height: 170,
        child: Stack(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              "assets/images/im_food.png",
            ),
          ),
          Positioned(
            top: 23,
            left: 23,
            child: Text(
              "Еда",
              style: TextStyle(
                fontSize: 22,
                color: NetworkConstants.blackColor,
                fontWeight: FontWeight.w600,
                fontFamily: "SFPro",
              ),
            ),
          ),
          Positioned(
            top: 55,
            left: 17,
            child: Text(
              """Из кафе и
ресторанов""",
              style: TextStyle(
                fontSize: 16,
                color: NetworkConstants.blackColor,
                fontWeight: FontWeight.w300,
                fontFamily: "SFPro",
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class _ScannerShowButtonWidget extends StatelessWidget {
  const _ScannerShowButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 14.0),
      child: GestureDetector(
        onTap: () {
          context.go('/scanner');
        },
        child: Container(
          height: 90,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: NetworkConstants.malinaColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  top: 11.0,
                  bottom: 11.0,
                ),
                child: SvgPicture.asset(
                  "assets/icons/ic_scanner.svg",
                  height: 68.0,
                  width: 36.0,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 50.0, top: 26.0, bottom: 26.0),
                child: SizedBox(
                  height: 38.0,
                  width: 223.0,
                  child: Text(
                    '''Сканируй QR-код и заказывай
        прямо в заведении''',
                    style: TextStyle(
                      color: NetworkConstants.whiteColor,
                      fontFamily: 'SFPro',
                      // fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _HomeSearchWidget extends StatelessWidget {
  const _HomeSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 52.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: NetworkConstants.textFieldBackgroundWhiteColor,
        ),
        width: 350,
        height: 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 38,
              height: 38,
              child: SvgPicture.asset(
                'assets/icons/ic_search.svg',
                width: 38,
                height: 38,
              ),
            ),
            const Expanded(
              child: TextField(
                maxLines: 1,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                  fontFamily: 'SFPro',
                  height: 1.0,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: NetworkConstants.textFieldBackgroundWhiteColor,
                  hintText: "Искать в Malina",
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0), // Центрирование текста
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
