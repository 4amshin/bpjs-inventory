import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:bpjs_inventory/shared/widgets/avatar/profile_circle_avatar.dart';
import 'package:bpjs_inventory/shared/widgets/google_fonts/poppins_fontStyle.dart';
import 'package:flutter/material.dart';

class ApvProfileImg extends StatelessWidget {
  const ApvProfileImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return Stack(
      children: [
        const Center(
          child: Hero(
            tag: 'profile',
            child: ProfileCircleAvatar(
              backgroundColor: bpLightGreen,
            ),
          ),
        ),
        Positioned(
          right: screen.width * 0.15,
          bottom: screen.height * 0.03,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              color: bpGolden,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: PoppinsText(
                text: "Edit Profile",
                textStyle: TextStyle(
                  fontSize: screen.height * 0.02,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
