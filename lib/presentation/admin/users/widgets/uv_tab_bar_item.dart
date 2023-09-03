import 'package:bpjs_inventory/presentation/admin/users/widgets/uv_grid_item.dart';
import 'package:flutter/material.dart';

class UvTabBarItem extends StatelessWidget {
  const UvTabBarItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 25,
          mainAxisSpacing: 20,
          mainAxisExtent: 150,
        ),
        itemCount: 5,
        itemBuilder: (context, index) {
          return UvGridItem(
            text: index.toString(),
          );
        },
      ),
    );
  }
}
