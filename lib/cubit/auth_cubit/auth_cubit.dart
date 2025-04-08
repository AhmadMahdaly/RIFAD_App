import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:rifad/cubit/auth_cubit/auth_states.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AppLoginInitialState());

  final storage = const FlutterSecureStorage();
  final String baseUrlLogin = dotenv.env['BASEURLLOGIN'] ?? '';
  final String baseUrlLoginWithCode = dotenv.env['BASEURLLOGINWITHCODE'] ?? '';
  Future<void> login({
    required String phoneNumber,
    required String identityNumber,
  }) async {
    emit(AppLoginLoadingState());
    try {
      final response = await http.post(
        Uri.parse(baseUrlLogin),

        body: json.encode({
          'companyId': dotenv.env['COMPANYID'] ?? '',
          'identityNumber': identityNumber,
          'phoneNumber': phoneNumber,
        }),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        emit(AppLoginSuccessState());
      } else {
        emit(AppLoginErrorState('خطأ'));
      }
    } catch (e) {
      emit(AppLoginErrorState('خطأ'));
    }
  }

  Future<void> loginWithCode({
    required String phoneNumber,
    required String identityNumber,
    required String code,
  }) async {
    emit(AppLoginLoadingState());
    try {
      final response = await http.post(
        Uri.parse('$baseUrlLoginWithCode$code'),

        body: json.encode({
          'companyId': dotenv.env['COMPANYID'] ?? '',
          'identityNumber': identityNumber,
          'phoneNumber': phoneNumber,
        }),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        emit(AppLoginSuccessState());
        final data = jsonDecode(response.body) as Map<String, dynamic>;
        final token = data['accessToken'].toString();
        await storage.write(key: 'auth_token', value: token);
      } else {
        emit(AppLoginWithCodeErrorState('خطأ'));
      }
    } catch (e) {
      emit(AppLoginWithCodeErrorState('خطأ'));
    }
  }

  Future<bool> checkLogin() async {
    final token = await storage.read(key: 'auth_token');
    return token != null;
  }

  Future<void> logout() async {
    await storage.delete(key: 'auth_token');
    emit(AppLogoutSuccessState());
  }
}
