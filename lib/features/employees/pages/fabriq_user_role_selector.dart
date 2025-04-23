import 'package:flutter/material.dart';

class FabriqUserRoleSelector extends StatefulWidget {
  const FabriqUserRoleSelector({super.key});

  @override
  State<FabriqUserRoleSelector> createState() => _FabriqUserRoleSelectorState();
}

class _FabriqUserRoleSelectorState extends State<FabriqUserRoleSelector> {
  static final employeeRoles = [
    'Admin',
    'SuperAdmin',
    'Cutting Master',
    'Sewing Master',
    'Packaging Master',
    'Cutter',
    'Packager',
    'Sewer',
    'Presser',
    'Cleaner',
    'Accountant',
    'Cook',
  ];

  final selectedValue = employeeRoles[0];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Roli",
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
            employeeRoles.length,
            (index) => DropdownMenuEntry(value: employeeRoles[index], label: employeeRoles[index]),
          ),
        ),
      ],
    );
  }
}
