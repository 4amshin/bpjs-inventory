import 'package:bpjs_inventory/presentation/admin/home/widgets/hv_app_bar.dart';
import 'package:bpjs_inventory/presentation/admin/home/widgets/hv_drawer.dart';
import 'package:bpjs_inventory/presentation/admin/home/widgets/hv_view_v2.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HvAppBar(),
      drawer: HvDrawer(),
      body: HvViewV2(),
      // floatingActionButton: const HvFloatingButton(),
    );
  }
}
