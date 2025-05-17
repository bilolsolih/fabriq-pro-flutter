import 'package:fabriq_pro/data/models/material/material_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../common/widgets/buttons/fabriq_text_button.dart';
import '../../../common/widgets/buttons/fabriq_text_button_with_icon.dart';
import '../../../common/widgets/fabriq_text_form_field.dart';
import '../../managers/materials/materials_bloc.dart';
import '../../managers/materials/materials_state.dart';

class MaterialUpdateDialog extends StatefulWidget {
  const MaterialUpdateDialog({super.key, required this.materialType});

  final MaterialListModel materialType;

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
    return BlocListener<MaterialsBloc, MaterialsState>(
      listener: (context, state) {
        if (state.status == MaterialsStatus.success) {
          context.pop();
          context.read<MaterialsBloc>().add(MaterialsLoad());
        }
      },
      child: Dialog(
        child: Container(
          width: 600,
          height: 339,
          padding: EdgeInsets.all(40),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Material turini yangilash",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Roboto",
                  fontSize: 16,
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
                    width: 250,
                    height: 40,
                    validator: (value) => null,
                    isValid: null,
                  ),
                ],
              ),
              Divider(color: Color(0xFFD9D9D9), height: 1),
              Row(
                spacing: 20,
                children: [
                  FabriqTextButton(
                    text: "Bekor qilish",
                    width: 250,
                    height: 40,
                    foregroundColor: Colors.black,
                    backgroundColor: Color(0xFFE5E7EB),
                    callback: () => context.pop(),
                  ),
                  FabriqTextButtonWithIcon(
                    title: "Yangilash",
                    icon: "assets/icons/add_profile.svg",
                    width: 250,
                    height: 40,
                    callback: () {
                      context.read<MaterialsBloc>().add(
                        MaterialsCreateNew(title: titleController.text),
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
