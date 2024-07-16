import 'package:bloc/bloc.dart';
import 'package:faveo/bloc/repositories/inbox_repository.dart';
import 'package:faveo/model/inbox_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'inbox_list_state.dart';
part 'inbox_list_cubit.freezed.dart';

class InboxListCubit extends Cubit<InboxListState> {
  InboxListCubit() : super(const InboxListState.initial());

  void fetchInboxLists() async {
    try {
      emit(const InboxListState.loading());
      final response = await InboxRepository().fetchInbox();
      emit(InboxListState.success(Inboxs: response));
    } catch (e) {
      emit(InboxListState.failure(errorMessage: e.toString()));
    }
  }
}
