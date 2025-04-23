import 'package:flutter/material.dart';

class FabriqTableData extends StatelessWidget {
  const FabriqTableData({super.key, required this.data, this.flex = 1});

  final String data;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flex,
      child: SizedBox(
        width: double.infinity,
        child: Text(
          data,
          style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
