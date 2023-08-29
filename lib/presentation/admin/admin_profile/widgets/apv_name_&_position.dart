// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:bpjs_inventory/shared/widgets/google_fonts/poppins_fontStyle.dart';

class ApvNamePosition extends StatelessWidget {
  final String? name;
  final String? position;
  const ApvNamePosition({
    Key? key,
    this.name,
    this.position,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return Column(
      children: [
        PoppinsText(
          text: name ?? "Name Right Here",
          textStyle: TextStyle(
            color: secondaryBlue,
            fontSize: screen.height * 0.04,
            fontWeight: FontWeight.w700,
          ),
        ),
        PoppinsText(
          text: position ?? "Position Here",
          textStyle: TextStyle(
            color: Colors.grey,
            fontSize: screen.height * 0.02,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
