import 'package:fabriq_pro/core/client.dart';
import 'package:fabriq_pro/data/models/material/material_models.dart';

class MaterialRepository {
  final ApiClient client;

  MaterialRepository({required this.client});

  List<MaterialTypeItemModel> materialTypes = [];

  Future<MaterialTypeItemModel?> fetchMaterialType({required int id}) async {
    if (materialTypes.isEmpty) {
      materialTypes = await fetchMaterialTypesList();
    }

    if (!materialTypes.any((item) => item.id == id)) {
      materialTypes = await fetchMaterialTypesList();
    }

    return materialTypes.where((item) => item.id == id).singleOrNull;
  }

  Future<List<MaterialTypeItemModel>> fetchMaterialTypesList({
    Map<String, dynamic>? queryParams,
  }) async {
    final rawMaterialTypes = await client.genericGetRequest<List>(
      '/materials/types',
      queryParams: queryParams,
    );

    final materials = rawMaterialTypes.map((item) => MaterialTypeItemModel.fromJson(item)).toList();
    return materials;
  }

  Future<List<MaterialModel>> fetchMaterialsList({Map<String, dynamic>? queryParams}) async {
    final rawMaterials = await client.genericGetRequest<List>(
      '/materials/list-all-materials',
      queryParams: queryParams,
    );

    final materials = rawMaterials.map((item) => MaterialModel.fromJson(item)).toList();
    return materials;
  }

  Future<bool> createNewMaterial({required MaterialTypeCreateModel data}) async {
    await client.genericPostRequest('/materials/create-new-material-type', data: data);
    return true;
  }

  Future updateMaterial({required MaterialTypeUpdateModel data}) async {
    await client.genericPatchRequest('/materials/update-material-type/${data.id}', data: data);
  }

  Future deleteMaterialType(int materialId) async {
    await client.deleteRequest('/materials/delete-material-type/$materialId');
  }
}
