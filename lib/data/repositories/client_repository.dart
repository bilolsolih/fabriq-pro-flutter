import 'package:fabriq_pro/core/client.dart';
import 'package:fabriq_pro/data/models/client/client_model.dart';

class ClientRepository {
  ClientRepository({required this.client});

  final ApiClient client;

  Future<List<Client>> fetchClients({int? page, int? limit}) async {
    final rawClients = await client.genericGetRequest<List<dynamic>>(
      '/clients/list',
      queryParams: {"Limit": limit ?? "", "Page": page ?? ""},
    );
    return rawClients.map((client) => Client.fromJson(client)).toList();
  }
}
