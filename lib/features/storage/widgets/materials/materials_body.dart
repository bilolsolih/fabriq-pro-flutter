import 'package:fabriq_pro/features/storage/managers/materials/materials_cubit.dart';
import 'package:fabriq_pro/features/storage/managers/materials/materials_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'material_item.dart';

class MaterialsBody extends StatelessWidget {
  const MaterialsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MaterialsCubit, MaterialsState>(
      builder: (context, state) {
        return Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.materials.length,
            itemBuilder: (context, index) {
              return MaterialItem(index: index, material: state.materials[index]);
            },
          ),
        );
      },
    );
  }
}
