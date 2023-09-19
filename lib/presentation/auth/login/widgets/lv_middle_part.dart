// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bpjs_inventory/presentation/auth/forget_password/view/forget_password_view.dart';
import 'package:bpjs_inventory/presentation/auth/login/widgets/lv_forget_password.dart';
import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:bpjs_inventory/shared/widgets/buttons/regular_button.dart';
import 'package:bpjs_inventory/shared/widgets/google_fonts/poppins_fontStyle.dart';
import 'package:bpjs_inventory/shared/widgets/input_field/bp_text_field.dart';

class LvMiddlePart extends StatelessWidget {
  final void Function()? onLogin;
  const LvMiddlePart({
    Key? key,
    this.onLogin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset(
          'assets/images/big-logo.png',
          height: screen.width * 0.45,
          width: screen.width * 0.45,
        ),
        Center(
          child: PoppinsText(
            text: "LOGIN",
            textStyle: TextStyle(
              fontSize: screen.width * 0.07,
              fontWeight: FontWeight.bold,
              color: secondaryBlue,
            ),
          ),
        ),
        SizedBox(height: screen.height * 0.01),
        const BpTextField(
          labelText: "Username",
          iconName: "person",
        ),
        SizedBox(height: screen.height * 0.02),
        const BpTextField(
          isPassword: true,
          labelText: "Password",
          iconName: "eye",
        ),
        SizedBox(height: screen.height * 0.04),
        LvForgetPassword(
          onLink: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ForgetPasswordView()),
          ),
        ),
        SizedBox(height: screen.height * 0.01),
        RegularButton(
          onTap: onLogin,
          backgroundColor: bpLightGreen,
          text: "LOGIN",
        ),
      ],
    );
  }
}
