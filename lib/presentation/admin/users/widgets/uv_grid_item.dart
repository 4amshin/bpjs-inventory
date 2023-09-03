// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:bpjs_inventory/shared/widgets/google_fonts/poppins_fontStyle.dart';
import 'package:flutter/material.dart';

class UvGridItem extends StatelessWidget {
  final String text;
  const UvGridItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        // color: Colors.orange,
        border: Border.all(
          width: 1.6,
          color: secondaryBlue,
        ),
        borderRadius: BorderRadius.circular(17),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/images/rely.jpg'),
          ),
          SizedBox(height: 5),
          PoppinsText(
            text: 'User Name',
            textStyle: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: secondaryBlue,
            ),
          ),
        ],
      ),
    );
  }
}
