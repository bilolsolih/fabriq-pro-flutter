import 'package:fabriq_pro/core/dependencies.dart';
import 'package:fabriq_pro/core/routing/router.dart';
import 'package:fabriq_pro/core/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(ScreenUtilInit(designSize: Size(1440, 1080), child: FabriqProApp()));
}

class FabriqProApp extends StatelessWidget {
  const FabriqProApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: dependencies,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: AppThemes.lightTheme,
        routerConfig: router,
      ),
    );
  }
}
