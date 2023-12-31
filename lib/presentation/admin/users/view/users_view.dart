import 'package:bpjs_inventory/presentation/admin/users/view/add_or_edit_user_view.dart';
import 'package:bpjs_inventory/presentation/admin/users/widgets/uv_tab_bar.dart';
import 'package:bpjs_inventory/presentation/admin/users/widgets/uv_tab_bar_item.dart';
import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:bpjs_inventory/shared/widgets/app_bar/regular_app_bar.dart';
import 'package:flutter/material.dart';

class UsersView extends StatefulWidget {
  const UsersView({Key? key}) : super(key: key);

  @override
  State<UsersView> createState() => _UsersViewState();
}

class _UsersViewState extends State<UsersView> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(
      length: 4,
      vsync: this,
    );
    return Scaffold(
      appBar: const RegularAppBar(text: 'Users'),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: Align(
                alignment: Alignment.centerLeft,
                child: UvTabBar(
                  controller: tabController,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: TabBarView(
                physics: const BouncingScrollPhysics(),
                controller: tabController,
                children: const [
                  UvTabBarItem(),
                  UvTabBarItem(),
                  UvTabBarItem(),
                  UvTabBarItem(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AddOrEditUserView()),
        ),
        backgroundColor: secondaryBlue,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
