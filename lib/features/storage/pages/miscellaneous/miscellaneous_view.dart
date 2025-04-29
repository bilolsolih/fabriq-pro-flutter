import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/colors.dart';
import '../../../../data/models/miscellaneous/miscellaneous_model.dart';
import '../../../common/widgets/buttons/fabriq_delete_button.dart';
import '../../../common/widgets/buttons/fabriq_icon_button_outlined.dart';
import '../../../common/widgets/fabriq_body_header_with_history.dart';
import '../../../common/widgets/fabriq_table_header_title.dart';
import '../../manager/miscellaneous_bloc/miscellaneous_bloc.dart';
import '../../manager/miscellaneous_bloc/miscellaneous_event.dart';
import '../../manager/miscellaneous_bloc/miscellaneous_state.dart';
import 'miscellaneous_add_dialog.dart';
import 'miscellaneous_update_dialog.dart';

class MiscellaneousView extends StatelessWidget {
  const MiscellaneousView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MiscellaneousBloc()..add(LoadMiscellaneous()),
      child: const _MiscellaneousBody(),
    );
  }
}

class _MiscellaneousBody extends StatelessWidget {
  const _MiscellaneousBody();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MiscellaneousBloc, MiscellaneousState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xFFD5D5D7), width: 1),
            ),
            child: Column(
              children: [
                FabriqBodyHeaderWithHistory(
                  title: "Boshqa Narsalar",
                  icon: "",
                  buttonTitle: "+ Qo'shish",
                  filterCallback: () {},
                  buttonCallback: () async {
                    final newItem = await showDialog<Miscellaneous>(
                      context: context,
                      builder:
                          (context) => MiscItemAddDialog(
                            nextId:
                                state.items.isEmpty
                                    ? 1
                                    : (state.items
                                            .map((e) => e.id)
                                            .reduce((a, b) => a > b ? a : b) +
                                        1),
                          ),
                    );
                    if (newItem != null) {
                      context.read<MiscellaneousBloc>().add(AddMiscellaneous(newItem));
                    }
                  },
                ),
                Container(
                  height: 60,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  color: AppColors.backgroundColor,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FabriqTableHeaderTitle(title: "ID", flex: 1),
                      FabriqTableHeaderTitle(title: "Nomi", flex: 1),
                      FabriqTableHeaderTitle(title: "Model", flex: 1),
                      FabriqTableHeaderTitle(title: "Detal", flex: 1),
                      FabriqTableHeaderTitle(title: "Soni", flex: 1),
                      FabriqTableHeaderTitle(title: "Sana", flex: 1),
                      FabriqTableHeaderTitle(title: "Taxrirlash", flex: 1),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 100),
                    itemCount: state.items.length,
                    itemBuilder: (context, index) {
                      final item = state.items[index];
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(color: Color(0xFFE0E0E0))),
                        ),
                        child: Row(
                          children: [
                            Expanded(child: Text(item.id.toString())),
                            Expanded(child: Text(item.name)),
                            Expanded(child: Text(item.model)),
                            Expanded(child: Text(item.detail)),
                            Expanded(child: Text(item.quantity)),
                            Expanded(child: Text(item.date)),
                            Expanded(
                              child: Row(
                                children: [
                                  FabriqIconButtonOutlined(
                                    icon: "assets/icons/edit.svg",
                                    color: Colors.blue,
                                    callback: () async {
                                      final updatedItem = await showDialog<Miscellaneous>(
                                        context: context,
                                        builder: (context) => MiscItemUpdateDialog(item: item),
                                      );
                                      if (updatedItem != null) {
                                        context.read<MiscellaneousBloc>().add(
                                          UpdateMiscellaneous(index, updatedItem),
                                        );
                                      }
                                    },
                                  ),
                                  const SizedBox(width: 8),
                                  FabriqDeleteButton(
                                    text: "Bu narsani o'chirishni xohlaysizmi?",
                                    icon: "assets/icons/delete.svg",
                                    color: Colors.red,
                                    callback: () {
                                      context.read<MiscellaneousBloc>().add(
                                        DeleteMiscellaneous(index),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
