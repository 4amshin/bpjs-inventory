import 'package:bpjs_inventory/presentation/auth/login/widgets/lv_bottom_link.dart';
import 'package:bpjs_inventory/presentation/auth/login/widgets/lv_middle_part.dart';
import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:bpjs_inventory/shared/widgets/google_fonts/poppins_fontStyle.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    // final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(
          horizontal: 35,
          vertical: 10,
        ),
        child: ListView(
          children: [
            SizedBox(height: screen.height * 0.13),
            const LvMiddlePart(),
            SizedBox(height: screen.height * 0.05),
            const LvBottomLink(),
          ],
        ),
      ),
    );
  }
}
