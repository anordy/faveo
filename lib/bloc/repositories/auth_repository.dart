import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:faveo/network/dio_client.dart';
import 'package:faveo/network/dio_exception.dart';
import 'package:faveo/network/endpoints.dart';
import 'package:nb_utils/nb_utils.dart';

class AuthRepository {
  Future<dynamic> login(dynamic data) async {
    try {
      final response = await DioClient.instance.post(
        loginED,
        data: data,
        options: Options(headers: {'Accept': 'application/json'}),
      );

      // save the user data to shared preferences
      final prefs = await SharedPreferences.getInstance();
      final user = json.encode({
        'username': response['user_id']['user_name'],
        'firstname': response['user_id']['first_name'],
        'lastname': response['user_id']['last_name'],
        'email': response['user_id']['email'],
        'profile': response['user_id']['profile_pic'],
        'phone_number': response['user_id']['phone_number'],
        'token': response['token'],
      });
      print(user);

      prefs.setString('user', user);

      return user;
    } on DioError catch (e) {
     
      if (e.response != null) {
        throw e.response!.data['message'];
      } else {
        var error = DioException.fromDioError(e);
         print("errror ===========");
      print(e);
        throw error.errorMessage;
      }
    }
  }
}
