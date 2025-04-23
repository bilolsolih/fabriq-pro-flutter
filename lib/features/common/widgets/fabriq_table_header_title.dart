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
          style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
