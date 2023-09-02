// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UvTabBar extends StatelessWidget {
  final TabController? controller;
  const UvTabBar({
    Key? key,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      isScrollable: true,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorPadding: const EdgeInsets.symmetric(
        horizontal: 2,
        vertical: 5,
      ),
      dragStartBehavior: DragStartBehavior.down,
      dividerColor: Colors.transparent,
      indicator: BoxDecoration(
        color: secondaryBlue,
        borderRadius: BorderRadius.circular(7),
        boxShadow: [
          BoxShadow(
            color: secondaryBlue.withOpacity(0.2),
            offset: const Offset(0, 3),
            blurRadius: 3,
          ),
        ],
      ),
      physics: const BouncingScrollPhysics(),
      labelColor: Colors.white,
      // indicatorColor: Colors.red,
      labelStyle: GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      tabs: const [
        Tab(text: "PMU"),
        Tab(text: "Keuangan"),
        Tab(text: "Service"),
        Tab(text: "Service"),
      ],
    );
  }
}
