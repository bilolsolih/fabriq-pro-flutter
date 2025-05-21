import 'package:fabriq_pro/core/utils/styles.dart';
import 'package:flutter/material.dart';

class FabriqTableHeaderTitle extends StatelessWidget {
  const FabriqTableHeaderTitle({super.key, required this.title, required this.flex});

  final String title;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flex,
      child: SizedBox(
        width: double.infinity,
        child: Text(
          title,
          style: AppStyles.tableItem,
        ),
      ),
    );
  }
}
