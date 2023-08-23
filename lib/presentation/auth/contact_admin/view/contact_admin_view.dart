import 'package:bpjs_inventory/presentation/auth/forget_password/widgets/fpv_back_to_login.dart';
import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:bpjs_inventory/shared/widgets/buttons/icon_text_button.dart';
import 'package:bpjs_inventory/shared/widgets/google_fonts/poppins_fontStyle.dart';
import 'package:bpjs_inventory/shared/widgets/icons/svg_icons.dart';
import 'package:flutter/material.dart';

class ContactAdminView extends StatelessWidget {
  const ContactAdminView({Key? key}) : super(key: key);

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
              SvgIcon(
                iconUrl: 'assets/icons/profile-add-outline.svg',
                color: secondaryBlue,
                height: screen.height * 0.05,
              ),
              PoppinsText(
                text: "Buat Akun!",
                textStyle: TextStyle(
                  color: secondaryBlue,
                  fontSize: screen.height * 0.03,
                  fontWeight: FontWeight.bold,
                ),
              ),
              PoppinsText(
                text: "Hubungi admin untuk membuat akun.",
                textAlign: TextAlign.center,
                textStyle: TextStyle(
                  fontSize: screen.height * 0.018,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: screen.height * 0.02),
              IconTextButton(
                onTap: () {},
                backgroundColor: bpLightGreen,
                text: "Hubungi",
                iconName: "message",
              ),
              SizedBox(height: screen.height * 0.03),
              const FpvBackToLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
