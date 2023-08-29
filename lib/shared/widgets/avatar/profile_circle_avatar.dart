// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProfileCircleAvatar extends StatelessWidget {
  final Color? backgroundColor;
  const ProfileCircleAvatar({
    Key? key,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return CircleAvatar(
      radius: screen.height * 0.11,
      backgroundColor: backgroundColor ?? Colors.grey,
      backgroundImage: const AssetImage('assets/images/rely.jpg'),
    );
  }
}
