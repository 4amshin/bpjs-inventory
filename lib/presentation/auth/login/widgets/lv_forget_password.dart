// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:bpjs_inventory/shared/widgets/google_fonts/poppins_fontStyle.dart';

class LvForgetPassword extends StatelessWidget {
  final void Function()? onLink;
  const LvForgetPassword({
    Key? key,
    this.onLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onLink,
      child: const Align(
        alignment: Alignment.centerRight,
        child: PoppinsText(
          text: "Lupa Password?",
          textStyle: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: secondaryBlue,
          ),
        ),
      ),
    );
  }
}
