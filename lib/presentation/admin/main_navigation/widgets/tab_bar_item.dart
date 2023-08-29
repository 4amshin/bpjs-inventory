// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:bpjs_inventory/shared/widgets/icons/svg_icons.dart';

// final Size screen = MediaQuery.of(context).size;

tabBarItem({
  required String iconName,
  required String title,
}) {
  return FlashyTabBarItem(
    activeColor: secondaryBlue,
    icon: SvgIcon(
      iconUrl: 'assets/icons/$iconName',
      height: 18,
      color: secondaryBlue.withOpacity(0.3),
    ),
    title: Text(
      title,
      style: GoogleFonts.poppins(
        fontSize: 13.5,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
