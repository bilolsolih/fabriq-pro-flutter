import 'package:fabriq_pro/core/client.dart';
import 'package:fabriq_pro/data/models/accessory/accessory_models.dart';

class AccessoryRepository {
  final ApiClient client;

  AccessoryRepository({required this.client});

  List<AccessoryTypeModel> accessoryTypes = [];
  List<AccessoryEntryModel> accessoryTypeEntries = [];

  Future<AccessoryTypeModel?> fetchAccessoryType({required int id}) async {
    if (accessoryTypes.isEmpty) {
      accessoryTypes = await fetchAccessoryTypesList();
    }

    if (!accessoryTypes.any((item) => item.id == id)) {
      accessoryTypes = await fetchAccessoryTypesList();
    }

    return accessoryTypes.where((item) => item.id == id).singleOrNull;
  }

  Future<List<AccessoryTypeModel>> fetchAccessoryTypesList({Map<String, dynamic>? queryParams}) async {
    final rawAccessoryTypes = await client.genericGetRequest<List>(
      '/accessories/list-all-accessory-types',
      queryParams: queryParams,
    );

    final accessories = rawAccessoryTypes.map((item) => AccessoryTypeModel.fromJson(item)).toList();
    return accessories;
  }

  Future<List<AccessoryEntryModel>> fetchAccessoryTypesEntriesList({Map<String, dynamic>? queryParams}) async {
    if (accessoryTypeEntries.isNotEmpty) return accessoryTypeEntries;

    final rawAccessoryTypes = await client.genericGetRequest<List>(
      '/accessories/list-all-accessory-entries',
      queryParams: queryParams,
    );
    accessoryTypeEntries = rawAccessoryTypes.map((item) => AccessoryEntryModel.fromJson(item)).toList();
    return accessoryTypeEntries;
  }

  Future<List<AccessoryModel>> fetchAccessoriesList({Map<String, dynamic>? queryParams}) async {
    final rawAccessories = await client.genericGetRequest<List>(
      '/accessories/list-all-accessories',
      queryParams: queryParams,
    );

    final accessories = rawAccessories.map((item) => AccessoryModel.fromJson(item)).toList();
    return accessories;
  }

  Future<bool> createNewAccessoryType({required AccessoryTypeCreateModel data}) async {
    await client.genericPostRequest('/accessories/create-new-accessory-type', data: data);
    return true;
  }

  Future updateAccessoryType({required AccessoryTypeUpdateModel data}) async {
    await client.genericPatchRequest('/accessories/update-accessory-type/${data.id}', data: data);
  }

  Future deleteAccessoryType(int accessoryId) async {
    await client.deleteRequest('/accessories/delete-accessory-type/$accessoryId');
  }

  Future addAccessoryToStorage({required AccessoryAddModel data}) async {
    await client.genericPostRequest('/accessories/accept-accessory-to-storage', data: data);
  }
}
