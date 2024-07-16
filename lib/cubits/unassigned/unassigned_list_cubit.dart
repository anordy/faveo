import 'package:bloc/bloc.dart';
import 'package:faveo/bloc/repositories/Unassigned_repository.dart';
import 'package:faveo/model/unassigned_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'unassigned_list_state.dart';
part 'unassigned_list_cubit.freezed.dart';

class UnassignedListCubit extends Cubit<UnassignedListState> {
  UnassignedListCubit() : super(const UnassignedListState.initial());

  void fetch() async {
    try {
      emit(const UnassignedListState.loading());
      final response = await UnassignedRepository().fetch();
      emit(UnassignedListState.success(Unassigneds: response));
    } catch (e) {
      emit(UnassignedListState.failure(errorMessage: e.toString()));
    }
  }
}
