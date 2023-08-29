import 'package:flutter/material.dart';

class HvGridItem extends StatelessWidget {
  const HvGridItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
