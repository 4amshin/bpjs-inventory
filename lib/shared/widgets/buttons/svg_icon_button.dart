// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bpjs_inventory/shared/widgets/icons_&_images/svg_icons.dart';

class SvgIconButton extends StatelessWidget {
  final void Function()? onTap;
  final String svgIconName;
  final double? height;
  final Color? color;

  const SvgIconButton({
    Key? key,
    this.onTap,
    required this.svgIconName,
    this.height,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: SvgIcon(
        iconUrl: 'assets/icons/$svgIconName',
        height: height,
        color: color ?? Colors.grey,
      ),
    );
  }
}
