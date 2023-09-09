import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:bpjs_inventory/shared/widgets/google_fonts/poppins_fontStyle.dart';
import 'package:bpjs_inventory/shared/widgets/icons_&_images/svg_icons.dart';
import 'package:flutter/material.dart';

class HvDrawer extends StatelessWidget {
  const HvDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return Drawer(
      width: screen.width / 1.3,
      // backgroundColor: bpLightGreen,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DrawerHeader(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Image.asset(
                      'assets/images/big-logo.png',
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PoppinsText(
                      text: 'Hubungi Admin',
                      textStyle: TextStyle(
                        color: secondaryBlue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    PoppinsText(
                      text: 'Tentang Aplikasi',
                      textStyle: TextStyle(
                        color: secondaryBlue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const ListTile(
            leading: SvgIcon(
              iconUrl: 'assets/icons/logout.svg',
              color: secondaryBlue,
            ),
            title: PoppinsText(
              text: 'LogOut',
              textStyle: TextStyle(
                fontSize: 15,
                color: secondaryBlue,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
