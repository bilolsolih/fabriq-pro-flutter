import 'package:fabriq_pro/core/utils/constants.dart';
import 'package:fabriq_pro/data/models/accessory/accessory_models.dart';
import 'package:fabriq_pro/data/models/supplier/supplier_entry_model.dart';
import 'package:fabriq_pro/features/common/widgets/fabriq_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/widgets/buttons/fabriq_text_button.dart';
import '../../../../common/widgets/buttons/fabriq_text_button_with_icon.dart';
import '../../../managers/accessories/accessories_cubit.dart';
import '../../../managers/accessories/accessories_state.dart';
import '../../../../common/widgets/fabriq_dropdown_selector.dart';

class AccessoryAddDialog extends StatefulWidget {
  const AccessoryAddDialog({super.key});

  @override
  State<AccessoryAddDialog> createState() => _AccessoryAddDialogState();
}

class _AccessoryAddDialogState extends State<AccessoryAddDialog> {
  final formKey = GlobalKey<FormState>();

  final titleController = TextEditingController();
  final quantityController = TextEditingController();
  SupplierEntryModel? supplier;
  AccessoryEntryModel? accessory;
  String? unit;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AccessoriesCubit, AccessoriesState>(
      listener: (context, state) {
        if (state.status == Status.success) {
          context.pop();
          context.read<AccessoriesCubit>().loadAccessories(typeId: state.selectedType?.id);
        }
      },
      child: Dialog(
        child: Container(
          constraints: BoxConstraints(
            minWidth: 600.spMin,
            maxWidth: 600.spMin,
            minHeight: 340.spMin,
            maxHeight: 400.spMin,
          ),
          padding: EdgeInsets.all(40.spMin),
          color: Colors.white,
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Omborga aksessuar qo'shish",
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
                    BlocSelector<AccessoriesCubit, AccessoriesState, List<SupplierEntryModel>>(
                      selector: (state) => state.supplierEntries,
                      builder: (context, values) {
                        return FabriqDropdownSelector<SupplierEntryModel>(
                          title: "Yetkazib beruvchi",
                          validator: (value) {
                            if (supplier != null) {
                              return null;
                            }
                            return "Yetkazib beruvchini tanlang.";
                          },
                          menuEntries: List.generate(
                            values.length,
                            (index) => DropdownMenuEntry(
                              value: values[index],
                              label: "${values[index].firstName} ${values[index].lastName}",
                            ),
                          ),
                          callback: (s) => supplier = s,
                        );
                      },
                    ),

                    BlocSelector<AccessoriesCubit, AccessoriesState, List<AccessoryEntryModel>>(
                      selector: (state) => state.accessoryEntries,
                      builder: (context, values) {
                        return FabriqDropdownSelector<AccessoryEntryModel>(
                          title: "Aksessuar turi",
                          validator: (value) {
                            if (accessory != null) {
                              return null;
                            }
                            return "Aksessuar turini tanlang.";
                          },
                          menuEntries: List.generate(values.length, (index) {
                            return DropdownMenuEntry(value: values[index], label: values[index].title);
                          }),
                          callback: (a) => accessory = a,
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FabriqTextFormField(
                      controller: quantityController,
                      width: 250.spMin,
                      height: 40.spMin,
                      label: "Miqdori",
                      hintText: "Miqdori",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Miqdorni kiriting.";
                        } else if (num.tryParse(value) == null) {
                          return "Faqat son kiritish lozim.";
                        } else {
                          return null;
                        }
                      },
                      isValid: true,
                    ),
                    FabriqDropdownSelector<String>(
                      title: "O'lchov birligi",
                      validator: (value) {
                        if (unit != null) {
                          return null;
                        }
                        return "O'lchov birligini tanlang.";
                      },
                      menuEntries: [
                        DropdownMenuEntry(value: "Piece", label: "Dona"),
                        DropdownMenuEntry(value: "Kg", label: "Kg"),
                        DropdownMenuEntry(value: "Meter", label: "Metr"),
                      ],
                      callback: (value) => unit = value,
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
                        if (formKey.currentState!.validate()) {
                          context.read<AccessoriesCubit>().addAccessoryToStorage(
                            accessoryId: accessory!.id,
                            fromUserId: supplier!.id,
                            quantity: num.parse(quantityController.text),
                            unit: unit!,
                          );
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
