import 'package:bpjs_inventory/presentation/admin/admin_profile/view/admin_profile_view.dart';
import 'package:bpjs_inventory/presentation/admin/home/widgets/hv_profile_icon.dart';
import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:bpjs_inventory/shared/widgets/buttons/svg_icon_button.dart';
import 'package:flutter/material.dart';

class HvAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HvAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: SvgIconButton(
        onTap: () => Scaffold.of(context).openDrawer(),
        svgIconName: "sidebar-left.svg",
        color: secondaryBlue,
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
