import 'package:flutter/material.dart';

import '../widgets/fabriq_header.dart';
import '../widgets/sidebar/fabriq_side_bar.dart';

class BaseView extends StatelessWidget {
  const BaseView({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          FabriqSideBar(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [FabriqHeader(), Expanded(child: child)],
            ),
          ),
        ],
      ),
    );
  }
}
