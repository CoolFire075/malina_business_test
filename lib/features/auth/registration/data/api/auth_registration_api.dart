import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:malina_business_test/features/auth/registration/data/models/auth_registration_info_response_dto.dart';

import '../../../../../core/network/constants.dart';

class AuthRegistrationApi {
  Future<AuthRegistrationInfoResponseDto?> registration() async {
    final url = Uri.parse('${NetworkConstants.baseUrl}/auth/signup');

    final response = await get(url);

    debugPrint(" response: $response");

    if (response.statusCode == 200 || response.statusCode == 201) {
      final map = jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
      return AuthRegistrationInfoResponseDto.fromJson(map);
    } else {
      return null;
    }
  }
}
