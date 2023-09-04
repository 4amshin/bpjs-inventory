import 'package:bpjs_inventory/presentation/admin/users/widgets/uv_grid_item.dart';
import 'package:flutter/material.dart';

class UvTabBarItem extends StatelessWidget {
  const UvTabBarItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return SizedBox(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: screen.width * 0.08,
          mainAxisSpacing: 20,
          mainAxisExtent: screen.width * 0.5,
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
