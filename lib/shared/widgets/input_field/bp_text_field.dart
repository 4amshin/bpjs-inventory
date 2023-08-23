// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:bpjs_inventory/shared/theme/color_themes.dart';

class BpTextField extends StatelessWidget {
  final bool isPassword;
  final String labelText;
  final String iconName;
  const BpTextField({
    Key? key,
    this.isPassword = false,
    required this.labelText,
    required this.iconName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return SizedBox(
      height: screen.height * 0.07,
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: labelText,
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(vertical: screen.height * 0.021),
            child: SvgPicture.asset(
              'assets/icons/$iconName.svg',
              colorFilter: const ColorFilter.mode(
                secondaryBlue,
                BlendMode.srcIn,
              ),
            ),
          ),
          labelStyle: TextStyle(
            color: secondaryBlue,
            fontSize: screen.height * 0.02,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          focusColor: Colors.red,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: secondaryBlue,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
