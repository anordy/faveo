import 'dart:async';

import 'package:dio/dio.dart';
import 'package:faveo/model/unassigned_model.dart';
import 'package:faveo/network/auth_header.dart';
import 'package:faveo/network/dio_client.dart';
import 'package:faveo/network/dio_exception.dart';
import 'package:faveo/network/endpoints.dart';

class UnassignedRepository {
  get context => null;

  /**
   * Fetch all Unassigneds
   */

  Future<List<Unassigned>> fetch() async {
    try {
      final headers = await ApiHeader().authHeader();
      final response = await DioClient.instance.get(
        unassignedED,
        options: Options(headers: headers),
      );
      final List<Unassigned> loadedUnassignedList = [];

      response['data'].forEach((value) {
        loadedUnassignedList.add(Unassigned.fromJson(value));
      });
      return loadedUnassignedList.toList();
    } on DioError catch (e) {
      print("========== error unassignned =========");
      print(e);
      print("=======================");
      var error = DioException.fromDioError(e);
      throw error.errorMessage;
    }
  }

/**
 * Fetch Unassigned
 */

  // Future<Unassigned> fetchUnassigned(String id) async {
  //   try {
  //     final headers = await ApiHeader().authHeader();
  //     final response = await DioClient.instance.get(
  //       '$UnassignedDetailED$id',
  //       options: Options(headers: headers),
  //     );
  //     final UnassignedDetail = UnassignedDetail.fromJson(response['data']);
  //     return UnassignedDetail;
  //   } on DioError catch (e) {
  //     if (e.response != null) {
  //       throw e.response!.data['message'];
  //     } else {
  //       var error = DioException.fromDioError(e);
  //       throw error.errorMessage;
  //     }
  //   }
  // }
}
