// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:bpjs_inventory/shared/widgets/buttons/svg_icon_button.dart';

class BackIconButton extends StatelessWidget {
  final Color? color;
  const BackIconButton({
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgIconButton(
      onTap: () => Navigator.pop(context),
      svgIconName: 'arrow-left-2.svg',
      color: color ?? secondaryBlue,
    );
  }
}
