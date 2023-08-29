import 'package:bpjs_inventory/presentation/admin/admin_profile/view/admin_profile_view.dart';
import 'package:bpjs_inventory/presentation/admin/home/widgets/hv_app_bar.dart';
import 'package:bpjs_inventory/presentation/admin/home/widgets/hv_drawer.dart';
import 'package:bpjs_inventory/presentation/admin/home/widgets/hv_grid_item.dart';
import 'package:bpjs_inventory/presentation/admin/home/widgets/hv_profile_icon.dart';
import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:bpjs_inventory/shared/widgets/buttons/svg_icon_button.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HvAppBar(),
      drawer: const HvDrawer(),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemCount: 4,
          itemBuilder: (context, index) {
            return const HvGridItem();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: bpLightGreen,
        child: const Icon(Icons.add),
      ),
    );
  }
}
