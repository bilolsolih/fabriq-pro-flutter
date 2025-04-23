import 'package:fabriq_pro/data/repositories/client_repository.dart';
import 'package:fabriq_pro/features/clients/managers/clients_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'clients_events.dart';

class ClientsBloc extends Bloc<ClientsEvent, ClientsState> {
  ClientsBloc({required ClientRepository clientRepo})
    : _clientRepo = clientRepo,
      super(ClientsState.initial()) {
    on<ClientsLoad>(_onLoad);
    add(ClientsLoad(page: 1, limit: 12));
  }

  final ClientRepository _clientRepo;

  Future _onLoad(ClientsLoad event, Emitter<ClientsState> emit) async {
    emit(state.copyWith(status: ClientsStatus.loading));
    final clients = await _clientRepo.fetchClients(page: event.page, limit: event.limit);
    emit(state.copyWith(status: ClientsStatus.success, clients: clients));
  }
}
