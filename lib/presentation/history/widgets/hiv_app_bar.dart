import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:bpjs_inventory/shared/widgets/google_fonts/poppins_fontStyle.dart';
import 'package:flutter/material.dart';

class HivAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HivAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 1,
      title: const PoppinsText(
        text: 'History',
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: secondaryBlue,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
