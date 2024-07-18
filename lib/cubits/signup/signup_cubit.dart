import 'package:bloc/bloc.dart';
import 'package:faveo/bloc/repositories/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(const SignupState.initial());

  void signup(dynamic data) async {
    try {
      emit(const SignupState.loading());
      final response = await AuthRepository().signup(data);
      emit(SignupState.success(user: response));
    } catch (e) {
      emit(SignupState.failure(errorMessage: e.toString()));
    }
  }
}
