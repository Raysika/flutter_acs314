import 'package:flutter/material.dart';
import 'package:test_drive/configs/constants.dart';

class customTextField extends StatelessWidget {
  final IconData? icon;
  final bool isPassword;
  final bool hideText;
  final String? hint;
  const customTextField(
      {super.key,
      required this.userFieldController,
      this.icon,
      this.hideText = false,
      this.isPassword = false,
      this.hint});

  final TextEditingController userFieldController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: hideText,
      cursorRadius: const Radius.elliptical(5, 0),
      controller: userFieldController,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          hintText: hint,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(color: primaryColor)),
          prefixIcon: Icon(icon),
          suffixIcon: isPassword
              ? const Icon(Icons.visibility)
              : null), //: Container(height:10,  width: 10,)
    );
  }
}
