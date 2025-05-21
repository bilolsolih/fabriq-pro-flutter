import 'package:fabriq_pro/features/storage/managers/accessories_types/accessory_types_cubit.dart';
import 'package:fabriq_pro/features/storage/managers/accessories_types/accessory_types_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routes.dart';
import 'accessory_type_item.dart';

class AccessoryTypesBody extends StatelessWidget {
  const AccessoryTypesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccessoryTypesCubit, AccessoryTypesState>(
      builder: (context, state) {
        return Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.accessoryTypes.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  final type = state.accessoryTypes[index];
                  context.go(Routes.getAccessoryTypeDetail(type.id));
                },
                child: AccessoryTypeItem(index: index, accessoryType: state.accessoryTypes[index]),
              );
            },
          ),
        );
      },
    );
  }
}
