part of 'inbox_list_cubit.dart';

@freezed
class InboxListState with _$InboxListState {
  const factory InboxListState.initial() = _Initial;
  const factory InboxListState.loading() = _Loading;
  const factory InboxListState.success({required List<Inbox> Inboxs}) =
      _Success;
  const factory InboxListState.failure({required String errorMessage}) =
      _Failure;
}
