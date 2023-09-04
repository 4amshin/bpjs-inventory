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
    final Size screen = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        // color: Colors.orange,
        border: Border.all(
          width: 1.6,
          color: secondaryBlue,
        ),
        borderRadius: BorderRadius.circular(screen.width * 0.1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: screen.width * 0.13,
            backgroundImage: const AssetImage('assets/images/rely.jpg'),
          ),
          SizedBox(height: screen.width * 0.03),
          PoppinsText(
            text: 'User Name',
            textAlign: TextAlign.center,
            textStyle: TextStyle(
              height: 1,
              overflow: TextOverflow.ellipsis,
              fontSize: screen.width * 0.04,
              fontWeight: FontWeight.w600,
              color: secondaryBlue,
            ),
          ),
        ],
      ),
    );
  }
}
