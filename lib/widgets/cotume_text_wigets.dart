import 'package:flutter/material.dart';

import '../constants.dart';

class CostumTextField extends StatelessWidget {
  final IconData icon;
  final bool obscureText;
  final String hintText;
  const CostumTextField({
    Key? key,
    required this.icon,
    required this.obscureText,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: TextStyle(color: Constants.blackColor),
      decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            icon,
            color: Constants.blackColor,
          ),
          hintText: hintText),
      cursorColor: Constants.blackColor,
    );
  }
}
