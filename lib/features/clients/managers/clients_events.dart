part of 'clients_bloc.dart';

sealed class ClientsEvent {}

final class ClientsLoad extends ClientsEvent {
  final int page, limit;

  ClientsLoad({required this.page, required this.limit});
}