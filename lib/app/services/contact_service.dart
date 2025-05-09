import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

import 'package:victor_vaz_portfolio/app/services/form_service.dart';

class ContactService implements FormService {
  @override
  Future<void> sendEmail(String name, String email, String message) async {
    await http.post(
      Uri.parse('https://api-cjay4kdwqq-uc.a.run.app/send-email'),
      headers: {'Content-Type': 'application/json'},
      body: convert.jsonEncode({
        'name': name,
        'email': email,
        'message': message,
      }),
    );
  }
}
