import 'package:flutter/material.dart';
import 'package:test_drive/configs/constants.dart';
import 'package:test_drive/views/customtext.dart';

class CustomButton extends StatelessWidget {
  final Color labelColor;
  final String labelButton;
  final bool isRegistration;
  const CustomButton({
    super.key,
    this.labelColor = primaryColor,
    required this.labelButton,
    this.isRegistration = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (isRegistration) {
          // Handle registration logic
          print("Registering...");
        } else {
          // Handle login logic
          print("Logging in...");
        }
      },
      // ignore: sort_child_properties_last
      child: customtitleText(label: labelButton, labelColor: labelColor),
      style: ElevatedButton.styleFrom(
          shape:
              BeveledRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: secondaryColor,
          elevation: 10,
          padding: const EdgeInsets.all(15),
          shadowColor: primaryColor),
    );
  }
}
