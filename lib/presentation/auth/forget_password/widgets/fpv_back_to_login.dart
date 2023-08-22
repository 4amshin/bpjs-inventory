// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:bpjs_inventory/shared/widgets/google_fonts/poppins_fontStyle.dart';
import 'package:bpjs_inventory/shared/widgets/icons/svg_icons.dart';

class FpvBackToLogin extends StatelessWidget {
  final void Function()? onTap;
  const FpvBackToLogin({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgIcon(
            iconUrl: "assets/icons/arrow-left-2.svg",
            color: secondaryBlue,
            height: screen.width * 0.08,
          ),
          SizedBox(width: screen.width * 0.03),
          PoppinsText(
            text: "Halaman Login",
            textStyle: TextStyle(
              color: secondaryBlue,
              fontWeight: FontWeight.w600,
              fontSize: screen.height * 0.02,
            ),
          )
        ],
      ),
    );
  }
}
