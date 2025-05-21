import 'package:fabriq_pro/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FabriqDropdownSelector<T> extends StatefulWidget {
  const FabriqDropdownSelector({
    super.key,
    required this.title,
    required this.menuEntries,
    required this.callback,
    required this.validator,
  });

  final String title;
  final Function(T?) callback;
  final String? Function(T?) validator;
  final List<DropdownMenuEntry<T>> menuEntries;

  @override
  State<FabriqDropdownSelector<T>> createState() => _FabriqDropdownSelectorState<T>();
}

class _FabriqDropdownSelectorState<T> extends State<FabriqDropdownSelector<T>> with SingleTickerProviderStateMixin {
  late final AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FormField<T>(
      validator: widget.validator,
      builder: (field) {
        return Column(
          spacing: 4,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.title, style: TextStyle(color: Colors.black, fontSize: 16.spMin, fontWeight: FontWeight.w500)),
            DropdownMenu<T>(
              enableSearch: true,
              enableFilter: true,
              onSelected: widget.callback,
              inputDecorationTheme: InputDecorationTheme(
                filled: true,
                fillColor: AppColors.backgroundColor,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.spMin), borderSide: BorderSide.none),
                constraints: BoxConstraints(minWidth: 250.spMin, maxWidth: 250.spMin),
              ),
              width: 250.spMin,
              dropdownMenuEntries: widget.menuEntries,
            ),
            if (field.hasError)
              AnimatedBuilder(
                builder: (context, child) {
                  animationController.forward();
                  return FadeTransition(opacity: animationController, child: child);
                },
                animation: Tween<double>(begin: 0, end: 1).animate(animationController),
                child: Text(field.errorText!),
              ),
          ],
        );
      },
    );
  }
}
