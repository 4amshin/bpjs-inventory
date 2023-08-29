// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bpjs_inventory/shared/theme/color_themes.dart';

class HvProfileIcon extends StatelessWidget {
  final void Function()? onTap;
  const HvProfileIcon({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: GestureDetector(
        onTap: onTap,
        child: const Hero(
          tag: 'profile',
          child: CircleAvatar(
            radius: 20,
            backgroundColor: secondaryBlue,
            backgroundImage: AssetImage('assets/images/rely.jpg'),
          ),
        ),
      ),
    );
  }
}
