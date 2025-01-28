import 'package:flutter/material.dart';
import 'package:malina_business_test/core/network/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _TitleWidgetsRow(),
          _ActionButtonsRow(),
          Container(child: Column(),)
        ],
      ),
    );
  }
}

class _TitleWidgetsRow extends StatelessWidget {
  const _TitleWidgetsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40.0, left: 6.0, right: 20.0),
      child: Container(
        width: 364,
        height: 34,
        child: Row(
          children: [
            _ArrowBackActionButton(),
            _TitleTextWidget(),
            _CleanActionButton(),
          ],
        ),
      ),
    );
  }
}

class _ArrowBackActionButton extends StatelessWidget {
  const _ArrowBackActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 34,
      height: 34,
      child: Center(
        child: Icon(
          Icons.arrow_back_ios_new_outlined,
        ),
      ),
    );
  }
}

class _TitleTextWidget extends StatelessWidget {
  const _TitleTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 255,
      height: 34,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Корзина",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontFamily: "SFPro",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CleanActionButton extends StatelessWidget {
  const _CleanActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      height: 34,
      child: Center(
        child: GestureDetector(
          child: Text(
            "Очистить",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontFamily: "SFPro",
            ),
          ),
        ),
      ),
    );
  }
}

class _ActionButtonsRow extends StatelessWidget {
  const _ActionButtonsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 13.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Row(
        children: [
          _DeliveryActionButton(),
          SizedBox(width: 16.0),
          _InInstitutionActionButton(),
        ],
      ),
    );
  }
}

class _InInstitutionActionButton extends StatelessWidget {
  const _InInstitutionActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165.9,
      height: 40,
      child: Center(
          child: Text(
        "В заведении",
        style: TextStyle(
          fontSize: 16,
          color: NetworkConstants.textBlackColor,
          fontWeight: FontWeight.w500,
          fontFamily: "SFPro",
        ),
      )),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: NetworkConstants.whiteColor,
      ),
    );
  }
}

class _DeliveryActionButton extends StatelessWidget {
  const _DeliveryActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 167,
      height: 40,
      child: Center(
          child: Text(
        "Доставка",
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontFamily: "SFPro",
        ),
      )),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: NetworkConstants.malinaColor,
      ),
    );
  }
}
