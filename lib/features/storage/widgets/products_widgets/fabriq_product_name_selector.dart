import 'package:flutter/material.dart';

class FabriqProductNameSelector extends StatefulWidget {
  const FabriqProductNameSelector({super.key});

  @override
  State<FabriqProductNameSelector> createState() => _FabriqProductNameSelectorState();
}

class _FabriqProductNameSelectorState extends State<FabriqProductNameSelector> {
  static final List<String> productNames = [
    'Futbolka',
    'Shim',
    'Kofta',
    'Yubka',
    'Kurtka',
    'Palto',
    'Shorti',
    'Koylak',
    'Kostyum',
    'Sport kiyim',
  ];

  final selectedValue = productNames[0];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Nomi",
          style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        DropdownMenu<String>(
          width: 250,
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Colors.white,
            constraints: BoxConstraints.tight(Size(250, 40)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Color(0xFFD9D9D9), width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Color(0xFFD9D9D9), width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Color(0xFFD9D9D9), width: 1),
            ),
          ),
          menuStyle: MenuStyle(
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: BorderSide.none),
            ),
          ),
          menuHeight: 200,
          initialSelection: selectedValue,
          dropdownMenuEntries: List.generate(
            productNames.length,
                (index) => DropdownMenuEntry(value: productNames[index], label: productNames[index]),
          ),
        ),
      ],
    );
  }
}
