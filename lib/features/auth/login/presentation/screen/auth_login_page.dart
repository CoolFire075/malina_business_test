import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthLoginPage extends StatelessWidget {
  AuthLoginPage({super.key});

  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const _GreetingTextWidget(),
          _LoginInputWidget(_loginController),
          _LoginInputTextWidget(),
          _PasswordInputWidget(_passwordController),
          _PasswordInputTextWidget(),
          _MoveToRegistrationPageWidget(),
          _LogInButton(),
        ],
      ),
    );
  }
}

class _LogInButton extends StatelessWidget {
  const _LogInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent,
                borderRadius: BorderRadius.circular(50.0),
              ),
              height: 56.0,
              width: 320.0,
              child: Center(
                child: Text("войти"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MoveToRegistrationPageWidget extends StatelessWidget {
  const _MoveToRegistrationPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 48.0, right: 49.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){context.go("/auth_registration");},
            child: Text(
              "еще нет аккаунта? зарегистрируйся",
              style: TextStyle(
                fontFamily: "OpenSans",
                fontSize: 16.0,
                decoration: TextDecoration.underline,
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
        right: 20.0,
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
            width: 349.0,
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
        right: 20.0,
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
            width: 349.0,
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

class _GreetingTextWidget extends StatelessWidget {
  const _GreetingTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 20.0, top: 84.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '''Добро пожаловать
в Культурное приложение''',
                      style: TextStyle(
                          fontSize: 27,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w400,
                          fontFamily: "MPLUS"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
    // const Padding(
    //   padding: EdgeInsets.only(
    //     left: 24.0,
    //     right: 20,
    //     top: 84.0,
    //   ),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.start,
    //     children: [
    //       Text(
    //         "Добро пожаловать",
    //         style: TextStyle(
    //             fontSize: 28,
    //             letterSpacing: 0,
    //             fontWeight: FontWeight.w400,
    //             fontFamily: "MPLUS"),
    //       ),
    //     ],
    //   ),
    // ),
    // const Padding(
    //   padding: EdgeInsets.only(
    //     left: 24.0,
    //     right: 20,
    //   ),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.start,
    //     children: [
    //       FittedBox(
    //         fit: BoxFit.scaleDown,
    //         child: Text(
    //           "в Культурное приложение",
    //           style: TextStyle(
    //               fontSize: 28,
    //               letterSpacing: 0,
    //               fontWeight: FontWeight.w400,
    //               fontFamily: "MPLUS"),
    //         ),
    //       ),
    //     ],
    //   ),
    // ),
  }
}
