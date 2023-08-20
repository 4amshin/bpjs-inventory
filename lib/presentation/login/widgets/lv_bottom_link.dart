// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:bpjs_inventory/shared/widgets/google_fonts/poppins_fontStyle.dart';

class LvBottomLink extends StatelessWidget {
  final void Function()? onLink;
  const LvBottomLink({
    Key? key,
    this.onLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const PoppinsText(
          text: "Belum Punya Akun? ",
          textStyle: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        GestureDetector(
          onTap: onLink,
          child: const PoppinsText(
            text: "Kontak Admin",
            textStyle: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: secondaryBlue,
            ),
          ),
        ),
      ],
    );
  }
}
