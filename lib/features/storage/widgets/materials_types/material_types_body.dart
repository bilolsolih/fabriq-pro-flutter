import 'package:fabriq_pro/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../managers/materials_types/material_types_bloc.dart';
import '../../managers/materials_types/material_types_state.dart';
import 'material_type_item.dart';

class MaterialTypesBody extends StatelessWidget {
  const MaterialTypesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MaterialTypesBloc, MaterialTypesState>(
      builder: (context, state) {
        return Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.materialsTypes.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  final type = state.materialsTypes[index];
                  context.go(Routes.getMaterialTypeDetail(type.id));
                },
                child: MaterialTypeItem(index: index, materialType: state.materialsTypes[index]),
              );
            },
          ),
        );
      },
    );
  }
}
