import 'package:bpjs_inventory/blocs/auth/login/login_bloc.dart';
import 'package:bpjs_inventory/blocs/auth/login/login_event.dart';
import 'package:bpjs_inventory/data/models/login_model/admin_model.dart';
import 'package:bpjs_inventory/presentation/auth/contact_admin/view/contact_admin_view.dart';
import 'package:bpjs_inventory/presentation/auth/login/widgets/lv_bottom_link.dart';
import 'package:bpjs_inventory/presentation/auth/login/widgets/lv_middle_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            LvMiddlePart(
              onLogin: () {
                final adminData = AdminModel(
                  name: 'Rely',
                  password: 'password',
                  username: 'shin',
                );
                context
                    .read<LoginBloc>()
                    .add(AdminLoginEvent(adminModel: adminData));
              },
            ),
            SizedBox(height: screen.height * 0.05),
            LvBottomLink(
              onLink: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ContactAdminView()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
