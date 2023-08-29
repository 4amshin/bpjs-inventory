import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:flutter/material.dart';

class HvFloatingButton extends StatelessWidget {
  const HvFloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: bpLightGreen,
      child: const Icon(Icons.add),
    );
  }
}
