import 'package:fabriq_pro/core/utils/styles.dart';
import 'package:flutter/material.dart';

class FabriqTableData extends StatelessWidget {
  const FabriqTableData({super.key, required this.data, this.flex = 1});

  final String data;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flex,
      child: SizedBox(width: double.infinity, child: Text(data, style: AppStyles.tableItem)),
    );
  }
}

class FabriqTableDataV2 extends StatelessWidget {
  const FabriqTableDataV2({super.key, required this.data, this.flex = 1});

  final Widget data;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Flexible(flex: flex, child: SizedBox(width: double.infinity, child: data));
  }
}
