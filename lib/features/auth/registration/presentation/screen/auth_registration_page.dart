import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:malina_business_test/features/auth/registration/presentation/bloc/auth_registration_bloc.dart';


class AuthRegistrationPage extends StatelessWidget {
  AuthRegistrationPage({super.key});

  final _controller = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthRegistrationBloc, AuthRegistrationState>(
      builder: (context, state) {
        final isLoading = state.isLoading;
        if(isLoading) {
          debugPrint("loading");
          return const Center(child: CircularProgressIndicator());
        }
        return Scaffold(
            body: Column(
          children: [
            _GoBackWidget(),
            _RegistrationTextWidget(),
            _LoginInputWidget(_controller),
            _LoginInputTextWidget(),
            _PasswordInputWidget(_passwordController),
            _PasswordInputTextWidget(),
            _PasswordInputWidget(_passwordController2),
            _PasswordInputTextWidget(),
            _RegistrationButton(_controller, _passwordController, _passwordController2),
          ],
        ));
      },
    );
  }
}

class _RegistrationButton extends StatelessWidget {
  const _RegistrationButton(
    this._controller,
    this._passwordController,
    this._passwordController2, {
    super.key,
  });

  final _controller;
  final _passwordController;
  final _passwordController2;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AuthRegistrationBloc>();
    return Padding(
      padding: const EdgeInsets.only(
        top: 24.0,
        left: 24.0,
        right: 24.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              debugPrint("click");
              bloc.add(
                AuthRegistrationButtonClicked(
                  login: _controller.toString(),
                  password: _passwordController.toString(),
                  password2: _passwordController2.toString(),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                borderRadius: BorderRadius.circular(50.0),
              ),
              height: 56.0,
              width: 320.0,
              child: Center(
                child: Text(
                  "зарегистрироваться",
                  style: TextStyle(fontFamily: "MPLUS", fontSize: 16.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PasswordInputTextWidget extends StatelessWidget {
  const _PasswordInputTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 345,
            height: 20.0,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 4,
                left: 16.0,
              ),
              child: Text("введите пароль"),
            ),
          ),
        ],
      ),
    );
  }
}

class _PasswordInputWidget extends StatelessWidget {
  _PasswordInputWidget(
    this._passwordController,
  );

  final _passwordController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 24.0,
        left: 24.0,
        right: 24.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(28.0),
            ),
            height: 56.0,
            width: 345.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Icon(
                        Icons.key,
                        size: 30.0,
                      ),
                    ),
                    SizedBox(
                      width: 216.0,
                      child: TextField(
                        obscureText: true,
                        obscuringCharacter: "*",
                        controller: _passwordController,
                        decoration: InputDecoration(
                          hintText: 'Введите пароль',
                          // labelText: 'Введите текст',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Icon(
                        Icons.close,
                        size: 30.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _LoginInputTextWidget extends StatelessWidget {
  const _LoginInputTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 345,
            height: 20.0,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 4,
                left: 16.0,
              ),
              child: Text("введите логин"),
            ),
          ),
        ],
      ),
    );
  }
}

class _LoginInputWidget extends StatelessWidget {
  _LoginInputWidget(
    this._controller,
  );

  final _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 24.0,
        left: 24.0,
        right: 24.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.lightGreenAccent, width: 3.0),
              borderRadius: BorderRadius.circular(28.0),
            ),
            height: 56.0,
            width: 345.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Icon(
                        Icons.person,
                        size: 30.0,
                      ),
                    ),
                    SizedBox(
                      width: 216.0,
                      child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          hintText: 'Введите логин',
                          // labelText: 'Введите текст',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Icon(
                        Icons.close,
                        size: 30.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _RegistrationTextWidget extends StatelessWidget {
  const _RegistrationTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24.0, top: 14.0),
      child: Row(
        children: [
          SizedBox(
            height: 36.0,
            child: Text(
              "регистрация",
              style: TextStyle(
                fontFamily: "MPLUS",
                fontSize: 28.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _GoBackWidget extends StatelessWidget {
  const _GoBackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 74.0,
        left: 24.0,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              context.go("/");
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightGreenAccent),
                borderRadius: BorderRadius.circular(17.0),
              ),
              height: 32.0,
              width: 160.0,
              child: Center(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 47.0, right: 1.0),
                      child: Icon(Icons.arrow_back_ios_new_outlined),
                    ),
                    Text("вход")
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
