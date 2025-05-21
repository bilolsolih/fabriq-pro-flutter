import 'package:fabriq_pro/features/storage/managers/accessories/accessories_cubit.dart';
import 'package:fabriq_pro/features/storage/managers/accessories/accessories_state.dart';
import 'package:fabriq_pro/features/storage/managers/materials/materials_cubit.dart';
import 'package:fabriq_pro/features/storage/managers/materials/materials_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'accessory_item.dart';

class AccessoriesBody extends StatelessWidget {
  const AccessoriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccessoriesCubit, AccessoriesState>(
      builder: (context, state) {
        return Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.accessories.length,
            itemBuilder: (context, index) {
              return AccessoryItem(index: index, accessory: state.accessories[index]);
            },
          ),
        );
      },
    );
  }
}
