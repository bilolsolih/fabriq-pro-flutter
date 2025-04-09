import 'package:fabriq_pro/core/routing/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(FabriqProApp());
}

class FabriqProApp extends StatelessWidget {
  const FabriqProApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(debugShowCheckedModeBanner: false, routerConfig: router);
  }
}
