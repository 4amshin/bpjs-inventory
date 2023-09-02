import 'package:bpjs_inventory/presentation/admin/home/widgets/hv_grid_item.dart';
import 'package:flutter/material.dart';

class UvTabBarItem extends StatelessWidget {
  const UvTabBarItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        itemCount: 14,
        itemBuilder: (context, index) {
          return HvGridItem(
            text: index.toString(),
          );
        },
      ),
    );
  }
}
