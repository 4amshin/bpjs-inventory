// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bpjs_inventory/shared/widgets/google_fonts/poppins_fontStyle.dart';

class RegularButton extends StatelessWidget {
  final void Function()? onTap;
  final Color backgroundColor;
  final String text;
  final double? borderRadius;
  const RegularButton({
    Key? key,
    this.onTap,
    required this.backgroundColor,
    required this.text,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return SizedBox(
      height: screen.width * 0.13,
      width: screen.width,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 10),
          ),
        ),
        child: PoppinsText(
          text: text,
          textStyle: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
