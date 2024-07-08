import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:faveo/model/ticket_model.dart';
import 'package:faveo/network/auth_header.dart';
import 'package:faveo/network/dio_client.dart';
import 'package:faveo/network/dio_exception.dart';
import 'package:faveo/network/endpoints.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TicketRepository {
  get context => null;

  /**
   * Fetch all Tickets
   */

  Future<List<Ticket>> fetchOpenTickets() async {
    try {
      final headers = await ApiHeader().authHeader();
      final response = await DioClient.instance.get(
        openTicketsED,
        options: Options(headers: headers),
      );
      final List<Ticket> loadedTicketList = [];

      response['data'].forEach((value) {
        loadedTicketList.add(Ticket.fromJson(value));
      });
      return loadedTicketList.toList();
    } on DioError catch (e) {
      var error = DioException.fromDioError(e);
      throw error.errorMessage;
    }
  }

/**
 * Fetch Ticket
 */

  // Future<Ticket> fetchTicket(String id) async {
  //   try {
  //     final headers = await ApiHeader().authHeader();
  //     final response = await DioClient.instance.get(
  //       '$TicketDetailED$id',
  //       options: Options(headers: headers),
  //     );
  //     final TicketDetail = TicketDetail.fromJson(response['data']);
  //     return TicketDetail;
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
