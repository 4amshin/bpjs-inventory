// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bpjs_inventory/shared/widgets/icons_&_images/svg_icons.dart';
import 'package:flutter/material.dart';

import 'package:bpjs_inventory/shared/theme/color_themes.dart';

class BpTextFormField extends StatelessWidget {
  final bool isPassword;
  final String labelText;
  final String? value;
  final String iconName;
  const BpTextFormField({
    Key? key,
    this.isPassword = false,
    required this.labelText,
    this.value,
    required this.iconName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return SizedBox(
      height: screen.height * 0.07,
      child: TextFormField(
        obscureText: isPassword,
        initialValue: value,
        decoration: InputDecoration(
          labelText: labelText,
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(vertical: screen.height * 0.021),
            child: SvgIcon(
              iconUrl: 'assets/icons/$iconName.svg',
              color: secondaryBlue,
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
