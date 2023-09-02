import 'package:bpjs_inventory/presentation/admin/users/widgets/uv_app_bar.dart';
import 'package:bpjs_inventory/presentation/admin/users/widgets/uv_tab_bar.dart';
import 'package:bpjs_inventory/presentation/admin/users/widgets/uv_tab_bar_item.dart';
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
      appBar: const UvAppBar(),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 15),
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
    );
  }
}
