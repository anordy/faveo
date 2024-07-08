import 'package:bloc/bloc.dart';
import 'package:faveo/bloc/repositories/ticket_repository.dart';
import 'package:faveo/model/ticket_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'ticket_list_state.dart';
part 'ticket_list_cubit.freezed.dart';

class TicketListCubit extends Cubit<TicketListState> {
  TicketListCubit() : super(const TicketListState.initial());

  void fetchTicketLists() async {
    try {
      emit(const TicketListState.loading());
      final response = await TicketRepository().fetchOpenTickets();
      emit(TicketListState.success(Tickets: response));
    } catch (e) {
      emit(TicketListState.failure(errorMessage: e.toString()));
    }
  }
}
