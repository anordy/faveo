part of 'ticket_list_cubit.dart';

@freezed
class TicketListState with _$TicketListState {
  const factory TicketListState.initial() = _Initial;
  const factory TicketListState.loading() = _Loading;
  const factory TicketListState.success({required List<Ticket> Tickets}) =
      _Success;
  const factory TicketListState.failure({required String errorMessage}) =
      _Failure;
}
