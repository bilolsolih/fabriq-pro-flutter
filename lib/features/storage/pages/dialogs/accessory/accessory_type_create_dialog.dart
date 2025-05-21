import 'package:fabriq_pro/core/utils/constants.dart';
import 'package:fabriq_pro/features/storage/managers/accessories_types/accessory_types_cubit.dart';
import 'package:fabriq_pro/features/storage/managers/accessories_types/accessory_types_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/widgets/buttons/fabriq_text_button.dart';
import '../../../../common/widgets/buttons/fabriq_text_button_with_icon.dart';
import '../../../../common/widgets/fabriq_text_form_field.dart';

class AccessoryTypeCreateDialog extends StatefulWidget {
  const AccessoryTypeCreateDialog({super.key});

  @override
  State<AccessoryTypeCreateDialog> createState() => _AccessoryTypeCreateDialogState();
}

class _AccessoryTypeCreateDialogState extends State<AccessoryTypeCreateDialog> {
  final titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AccessoryTypesCubit, AccessoryTypesState>(
      listener: (context, state) {
        if (state.status == Status.success) {
          context.pop();
          context.read<AccessoryTypesCubit>().loadAccessoryTypes();
        }
      },
      child: Dialog(
        child: Container(
          width: 600.spMin,
          height: 339.spMin,
          padding: EdgeInsets.all(40.spMin),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Yangi aksessuar qo'shish",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Roboto",
                  fontSize: 24.spMin,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Divider(color: Color(0xFFD9D9D9), height: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FabriqTextFormField(
                    controller: titleController,
                    label: "Nom",
                    hintText: "Aksessuar nomi",
                    width: 250.spMin,
                    height: 40.spMin,
                    validator: (value) => null,
                    isValid: null,
                  ),
                ],
              ),
              Divider(color: Color(0xFFD9D9D9), height: 1),
              Row(
                spacing: 20.spMin,
                children: [
                  FabriqTextButton(
                    text: "Bekor qilish",
                    width: 250.spMin,
                    height: 40.spMin,
                    fontSize: 16.spMin,
                    foregroundColor: Colors.black,
                    backgroundColor: Color(0xFFE5E7EB),
                    callback: () => context.pop(),
                  ),
                  FabriqTextButtonWithIcon(
                    title: "Qo'shish",
                    icon: "assets/icons/add_profile.svg",
                    width: 250.spMin,
                    height: 40.spMin,
                    fontSize: 16.spMin,
                    callback: () {
                      context.read<AccessoryTypesCubit>().createAccessoryType(
                        title: titleController.text,
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
