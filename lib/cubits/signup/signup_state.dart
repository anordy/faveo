part of 'signup_cubit.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.loading() = _SignupStateLoading;
  const factory SignupState.success({ required dynamic user }) = _SignupStateSuccess;
  const factory SignupState.failure({ required String errorMessage }) = _SignupStateFailure;
}
