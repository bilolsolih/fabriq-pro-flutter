import 'package:fabriq_pro/data/models/client/client_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'clients_state.freezed.dart';

enum ClientsStatus { initial, loading, success, error }

@freezed
abstract class ClientsState with _$ClientsState {
  const factory ClientsState({required List<Client> clients, required ClientsStatus status}) =
      _ClientsState;

  factory ClientsState.initial() {
    return ClientsState(clients: [], status: ClientsStatus.initial);
  }
}
