// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:bpjs_inventory/shared/widgets/google_fonts/poppins_fontStyle.dart';

class HivHistoryItem extends StatelessWidget {
  final String name;
  final String position;
  final String status;
  final Color? color;
  const HivHistoryItem({
    Key? key,
    required this.name,
    required this.position,
    required this.status,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return Container(
      height: screen.height * 0.1,
      padding: EdgeInsets.symmetric(
        horizontal: screen.width * 0.035,
        vertical: screen.height * 0.01,
      ),
      margin: EdgeInsets.only(bottom: screen.height * 0.025),
      decoration: BoxDecoration(
        border: Border.all(
          width: screen.height * 0.0024,
          color: color ?? Colors.grey,
        ),
        borderRadius: BorderRadius.circular(screen.height * 0.01),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  PoppinsText(
                    text: name,
                    textStyle: TextStyle(
                      fontSize: screen.height * 0.021,
                      color: secondaryBlue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  PoppinsText(
                    text: position,
                    textStyle: TextStyle(
                      height: 1,
                      fontSize: screen.height * 0.014,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              PoppinsText(
                text: status,
                textStyle: TextStyle(
                  fontSize: screen.height * 0.017,
                  color: color ?? Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          PoppinsText(
            text: 'Feb 21',
            textStyle: TextStyle(
              fontSize: screen.height * 0.017,
              color: secondaryBlue,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
