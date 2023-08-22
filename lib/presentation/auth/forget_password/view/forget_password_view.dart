import 'package:bpjs_inventory/presentation/auth/forget_password/widgets/fpv_back_to_login.dart';
import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:bpjs_inventory/shared/widgets/buttons/icon_text_button.dart';
import 'package:bpjs_inventory/shared/widgets/google_fonts/poppins_fontStyle.dart';
import 'package:bpjs_inventory/shared/widgets/input_field/bp_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/finger-scan.svg',
                height: screen.height * 0.05,
                colorFilter: const ColorFilter.mode(
                  secondaryBlue,
                  BlendMode.srcIn,
                ),
              ),
              PoppinsText(
                text: "Lupa Password?",
                textStyle: TextStyle(
                  color: secondaryBlue,
                  fontSize: screen.height * 0.03,
                  fontWeight: FontWeight.bold,
                ),
              ),
              PoppinsText(
                text:
                    "Masukkan nama lengkap anda & klik tombol kirim untuk mendapatkan password baru dari admin.",
                textAlign: TextAlign.center,
                textStyle: TextStyle(
                  fontSize: screen.height * 0.018,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: screen.height * 0.04),
              const BpTextField(
                labelText: "Nama Lengkap",
                iconName: "person",
              ),
              SizedBox(height: screen.height * 0.02),
              IconTextButton(
                onTap: () {},
                backgroundColor: bpLightGreen,
                text: "KIRIM",
                iconName: "send-2",
              ),
              SizedBox(height: screen.height * 0.05),
              FpvBackToLogin(
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
