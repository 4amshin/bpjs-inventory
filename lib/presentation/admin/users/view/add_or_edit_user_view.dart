import 'package:bpjs_inventory/presentation/admin/users/widgets/aev_profile_img.dart';
import 'package:bpjs_inventory/shared/widgets/app_bar/regular_app_bar.dart';
import 'package:bpjs_inventory/shared/widgets/buttons/back_icon_button.dart';
import 'package:bpjs_inventory/shared/widgets/input_field/bp_text_form_field.dart';
import 'package:flutter/material.dart';

class AddOrEditUserView extends StatelessWidget {
  const AddOrEditUserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const RegularAppBar(
        text: 'Add User',
        leading: BackIconButton(),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(height: 40.0),
            const AevProfileImg(),
            const SizedBox(height: 60.0),
            Column(
              children: [
                const BpTextFormField(
                  labelText: "Nama",
                  value: "Fulan Bin Fulan",
                  iconName: 'user-outline',
                ),
                SizedBox(height: screen.height * 0.03),
                const BpTextFormField(
                  labelText: "Email",
                  value: "fulanbpjs@gmail.com",
                  iconName: 'sms',
                ),
                SizedBox(height: screen.height * 0.03),
                const BpTextFormField(
                  labelText: "Password",
                  isPassword: true,
                  value: "123456",
                  iconName: 'key',
                ),
                SizedBox(height: screen.height * 0.03),
                const BpTextFormField(
                  labelText: "Divisi",
                  value: "SDM & Resource",
                  iconName: 'tag-2',
                ),
                SizedBox(height: screen.height * 0.03),
                const BpTextFormField(
                  labelText: "Role",
                  value: "Employee",
                  iconName: 'briefcase-outline',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
