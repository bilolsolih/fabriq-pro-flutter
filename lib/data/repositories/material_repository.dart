import 'package:fabriq_pro/core/client.dart';
import 'package:fabriq_pro/data/models/material/material_models.dart';

class MaterialRepository {
  final ApiClient client;

  MaterialRepository({required this.client});

  Future<List<MaterialListModel>> fetchMaterialsList({Map<String, dynamic>? queryParams}) async {
    final rawMaterials = await client.genericGetRequest<List>(
      '/materials/types',
      queryParams: queryParams,
    );

    final materials = rawMaterials.map((item) => MaterialListModel.fromJson(item)).toList();
    return materials;
  }

  Future<bool> createNewMaterial({required MaterialCreateModel data}) async {
    await client.genericPostRequest('/materials/create-new-material-type', data: data);
    return true;
  }

  Future updateMaterial({required MaterialUpdateModel data}) async {
    await client.genericPatchRequest('/materials/update-material-type/${data.id}', data: data);
  }

  Future deleteMaterialType(int materialId) async {
    await client.deleteRequest('/materials/delete-material-type/$materialId');
  }
}
