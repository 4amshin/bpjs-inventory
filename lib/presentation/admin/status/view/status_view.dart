import 'package:bpjs_inventory/presentation/admin/status/widgets/sv_app_bar.dart';
import 'package:bpjs_inventory/presentation/admin/status/widgets/sv_status_item.dart';
import 'package:flutter/material.dart';

class StatusView extends StatelessWidget {
  const StatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const SvAppBar(),
        body: const TabBarView(
          children: [
            SvStatusItem(
              imgUrl: 'assets/images/rely.jpg',
              name: 'Rely Arfadillah',
              position: 'SDM Vice Manager',
              time: '3 Hours Ago',
            ),
            SvStatusItem(
              isPending: true,
              imgUrl: 'assets/images/rely.jpg',
              name: 'Rely Arfadillah',
              position: 'SDM Vice Manager',
              time: '3 Hours Ago',
            ),
          ],
        ),
      ),
    );
  }
}
