// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:bpjs_inventory/shared/widgets/google_fonts/poppins_fontStyle.dart';

class IconTextButton extends StatelessWidget {
  final void Function()? onTap;
  final Color backgroundColor;
  final String text;
  final String iconName;
  final double? borderRadius;
  const IconTextButton({
    Key? key,
    this.onTap,
    required this.backgroundColor,
    required this.text,
    required this.iconName,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return SizedBox(
      height: screen.height * 0.07,
      width: screen.width,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 5),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/$iconName.svg',
              height: screen.height * 0.025,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
            SizedBox(width: screen.width * 0.02),
            PoppinsText(
              text: text,
              textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: screen.height * 0.025,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
