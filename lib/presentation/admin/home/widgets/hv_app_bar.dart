import 'package:bpjs_inventory/presentation/admin/admin_profile/view/admin_profile_view.dart';
import 'package:bpjs_inventory/presentation/admin/home/widgets/hv_profile_icon.dart';
import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:bpjs_inventory/shared/widgets/icons_&_images/svg_icons.dart';
import 'package:flutter/material.dart';

class HvAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HvAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // leading: SvgIconButton(
      //   onTap: () => Scaffold.of(context).openDrawer(),
      //   svgIconName: "menu-bold.svg",
      //   color: secondaryBlue,
      // ),
      leading: GestureDetector(
        onTap: () => Scaffold.of(context).openDrawer(),
        child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(7.5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.transparent,
            border: Border.all(
              width: 1.5,
              color: secondaryBlue,
            ),
          ),
          child: const SvgIcon(
            iconUrl: 'assets/icons/menu-bold.svg',
            color: secondaryBlue,
          ),
        ),
      ),
      actions: [
        HvProfileIcon(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AdminProfileView()),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
