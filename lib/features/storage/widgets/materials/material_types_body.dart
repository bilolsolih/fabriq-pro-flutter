import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../managers/materials/materials_bloc.dart';
import '../../managers/materials/materials_state.dart';
import 'material_type_item.dart';

class MaterialTypesBody extends StatelessWidget {
  const MaterialTypesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MaterialsBloc, MaterialsState>(
      builder: (context, state) {
        return Expanded(
          child: ListView.builder(
            itemCount: state.materials.length,
            itemBuilder: (context, index) {
              return MaterialTypeItem(index: index, material: state.materials[index]);
            },
          ),
        );
      },
    );
  }
}
