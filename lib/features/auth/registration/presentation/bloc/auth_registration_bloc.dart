import 'dart:convert';
import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malina_business_test/core/network/constants.dart';
import 'package:malina_business_test/features/auth/registration/domain/auth_registration_interactor.dart';
import 'package:malina_business_test/features/auth/registration/presentation/mappers/auth_registration_model_mapper.dart';

import '../models/auth_registration_info_model.dart';

part 'auth_registration_event.dart';

part 'auth_registration_state.dart';

class AuthRegistrationBloc extends Bloc<AuthRegistrationEvent, AuthRegistrationState> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  final AuthRegistrationInteractor _authRegistrationInteractor;
  final AuthRegistrationModelMapper _authRegistrationModelMapper;

  AuthRegistrationBloc(
    this._authRegistrationInteractor,
    this._authRegistrationModelMapper,
  ) : super(const AuthRegistrationState(
          isLoading: false,
          isSuccess: false,
        )) {
    on<AuthRegistrationButtonClicked>(_onAuthRegistrationButtonClicked);
  }

  Future<Map<String, dynamic>> _onAuthRegistrationButtonClicked(
    AuthRegistrationButtonClicked event,
    Emitter<AuthRegistrationState> emit,
  ) async {
    // if (event.password != event.password2) {
    //   debugPrint("passwords not equal");
    //   return {};
    // }
    emit(state.copyWith(isLoading: true));
    debugPrint("started");
    final client = HttpClient();
    final url = Uri.parse("${NetworkConstants.baseUrl}/auth/signup");
    final parameters = <String, dynamic>{
      "username": event.login,
      "password": event.password,
    };
    final request = await client.postUrl(url);
    request.headers.set("Content-Type",
        "application/json"
            // " , Accept: application/xml, Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiI4YTJlMDNkZC1kZGQwLTQ2NjQtOGVjYS0wNDE2MmE0ZDM4MmYiLCJ1c2VybmFtZSI6Ik51cmdhenkiLCJpYXQiOjE3NDIxNDA3NDgsImV4cCI6MTc0MjE0MTY0OH0.mZf2uslq-J_2RtV8O-EiLW1SvzcbFz7mIgBGjUAle2Y"
        );
    request.write(jsonEncode(parameters));
    final response = await request.close();
    final jsonStrings = await response.transform(utf8.decoder).toList();
    final jsonString = jsonStrings.join();
    debugPrint(jsonString);
    return jsonDecode(jsonString);
  }
}
