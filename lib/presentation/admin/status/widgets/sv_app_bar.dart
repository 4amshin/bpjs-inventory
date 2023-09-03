import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:bpjs_inventory/shared/widgets/google_fonts/poppins_fontStyle.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SvAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SvAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      // elevation: 1,
      title: const PoppinsText(
        text: 'Status Pengambilan',
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: secondaryBlue,
        ),
      ),
      bottom: TabBar(
        indicatorColor: bpLightGreen,
        labelColor: bpLightGreen,
        unselectedLabelColor: secondaryBlue,
        labelStyle: GoogleFonts.poppins(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        tabs: const [
          Tab(
            text: 'Request',
          ),
          Tab(
            text: 'Pending',
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
