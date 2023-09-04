import 'package:bpjs_inventory/presentation/history/widgets/hiv_history_item.dart';
import 'package:bpjs_inventory/shared/widgets/app_bar/regular_app_bar.dart';
import 'package:flutter/material.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const RegularAppBar(text: 'History'),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return const HivHistoryItem(
              name: 'Abdul Zubair Bin Qosim',
              position: 'SDM Vice Manager',
              isAccept: true,
            );
          },
        ),
      ),
    );
  }
}
