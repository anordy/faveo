import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:faveo/model/inbox_model.dart';
import 'package:faveo/network/auth_header.dart';
import 'package:faveo/network/dio_client.dart';
import 'package:faveo/network/dio_exception.dart';
import 'package:faveo/network/endpoints.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InboxRepository {
  get context => null;

  /**
   * Fetch all Inboxs
   */

  Future<List<Inbox>> fetchInbox() async {
    try {
      final headers = await ApiHeader().authHeader();
      final response = await DioClient.instance.get(
        inboxED,
        options: Options(headers: headers),
      );
      final List<Inbox> loadedInboxList = [];

      print("=============== inbox repository =============");
      print(response);
      print("==============================================");

      response['data'].forEach((value) {
        loadedInboxList.add(Inbox.fromJson(value));
      });
      print("========   sample =========");
      print(loadedInboxList);
      print("========================");
      return loadedInboxList.toList();
    } on DioError catch (e) {
      var error = DioException.fromDioError(e);
      throw error.errorMessage;
    }
  }

/**
 * Fetch Inbox
 */

  // Future<Inbox> fetchInbox(String id) async {
  //   try {
  //     final headers = await ApiHeader().authHeader();
  //     final response = await DioClient.instance.get(
  //       '$InboxDetailED$id',
  //       options: Options(headers: headers),
  //     );
  //     final InboxDetail = InboxDetail.fromJson(response['data']);
  //     return InboxDetail;
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
