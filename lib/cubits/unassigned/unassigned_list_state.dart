part of 'unassigned_list_cubit.dart';

@freezed
class UnassignedListState with _$UnassignedListState {
  const factory UnassignedListState.initial() = _Initial;
  const factory UnassignedListState.loading() = _Loading;
  const factory UnassignedListState.success({required List<Unassigned> Unassigneds}) =
      _Success;
  const factory UnassignedListState.failure({required String errorMessage}) =
      _Failure;
}
