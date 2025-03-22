import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../../../../core/network/constants.dart';
import '../models/auth_login_response_dto.dart';

class AuthLoginApi {
  Future<AuthLoginResponseDto?> fetchForecastData(
      {required String query}) async {
    final url = Uri.parse(
        '${NetworkConstants.baseUrl}/auth/signup');

    final response = await get(url);

    debugPrint('response: $response');

    if (response.statusCode == 200) {
      final map = jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
      return AuthLoginResponseDto.fromJson(map);
    } else {
      return null;
    }
  }
}