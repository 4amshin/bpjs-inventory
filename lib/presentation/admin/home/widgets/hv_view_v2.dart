import 'package:bpjs_inventory/presentation/admin/home/widgets/hv_bottom_slider.dart';
import 'package:bpjs_inventory/presentation/admin/home/widgets/hv_card.dart';
import 'package:flutter/material.dart';

class HvViewV2 extends StatelessWidget {
  const HvViewV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HvCard(),
        SizedBox(height: 25.0),
        HvBottomSlider(),
      ],
    );
  }
}
