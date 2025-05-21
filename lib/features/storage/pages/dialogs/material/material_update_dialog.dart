import 'package:fabriq_pro/data/models/material/material_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/widgets/buttons/fabriq_text_button.dart';
import '../../../../common/widgets/buttons/fabriq_text_button_with_icon.dart';
import '../../../../common/widgets/fabriq_text_form_field.dart';
import '../../../managers/materials_types/material_types_bloc.dart';
import '../../../managers/materials_types/material_types_state.dart';

class MaterialUpdateDialog extends StatefulWidget {
  const MaterialUpdateDialog({super.key, required this.materialType});

  final MaterialTypeItemModel materialType;

  @override
  State<MaterialUpdateDialog> createState() => _MaterialUpdateDialogState();
}

class _MaterialUpdateDialogState extends State<MaterialUpdateDialog> {
  final titleController = TextEditingController();

  @override
  void initState() {
    super.initState();
    titleController.text = widget.materialType.title;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MaterialTypesBloc, MaterialTypesState>(
      listener: (context, state) {
        if (state.status == MaterialsStatus.success) {
          context.pop();
          context.read<MaterialTypesBloc>().add(LoadMaterialTypes());
        }
      },
      child: Dialog(
        child: Container(
          width: 600.w,
          height: 339.h,
          padding: EdgeInsets.all(40.sp),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Material turini yangilash",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Roboto",
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Divider(color: Color(0xFFD9D9D9), height: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FabriqTextFormField(
                    controller: titleController,
                    label: "Yangi nom",
                    hintText: "Material nomi",
                    width: 250.w,
                    height: 40.h,
                    validator: (value) => null,
                    isValid: null,
                  ),
                ],
              ),
              Divider(color: Color(0xFFD9D9D9), height: 1),
              Row(
                spacing: 20.w,
                children: [
                  FabriqTextButton(
                    text: "Bekor qilish",
                    width: 250.w,
                    height: 40.h,
                    fontSize: 16.sp,
                    foregroundColor: Colors.black,
                    backgroundColor: Color(0xFFE5E7EB),
                    callback: () => context.pop(),
                  ),
                  FabriqTextButtonWithIcon(
                    title: "Yangilash",
                    icon: "assets/icons/add_profile.svg",
                    width: 250.w,
                    height: 40.h,
                    fontSize: 16.sp,
                    callback:
                        () => context.read<MaterialTypesBloc>().add(
                          MaterialsUpdate(id: widget.materialType.id, title: titleController.text),
                        ),
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
