import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:bpjs_inventory/shared/widgets/avatar/profile_circle_avatar.dart';
import 'package:bpjs_inventory/shared/widgets/icons/svg_icons.dart';
import 'package:flutter/material.dart';

class AevProfileImg extends StatelessWidget {
  const AevProfileImg({Key? key}) : super(key: key);

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
          child: const CircleAvatar(
            radius: 20,
            backgroundColor: secondaryBlue,
            child: CircleAvatar(
              radius: 19,
              backgroundColor: Colors.white,
              child: SvgIcon(
                iconUrl: 'assets/icons/camera.svg',
                color: secondaryBlue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
