import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:bpjs_inventory/shared/widgets/google_fonts/poppins_fontStyle.dart';
import 'package:bpjs_inventory/shared/widgets/icons_&_images/svg_image.dart';
import 'package:flutter/material.dart';

class HvCard extends StatelessWidget {
  const HvCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: screen.width * 0.05,
        vertical: screen.height * 0.05,
      ),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [bpLightGreen, primaryGreen],
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgImage(
            height: screen.width * 0.35,
            iconUrl: 'assets/images/inventory.svg',
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PoppinsText(
                text: 'AYO!',
                textStyle: TextStyle(
                  height: 1,
                  fontSize: screen.width * 0.15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: screen.width * 0.05),
                child: PoppinsText(
                  text: 'Mulai Atur \nPerencanaan \nBarangmu',
                  textAlign: TextAlign.right,
                  textStyle: TextStyle(
                    fontSize: screen.width * 0.04,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
