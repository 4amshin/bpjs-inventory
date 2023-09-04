import 'package:bpjs_inventory/presentation/admin/admin_profile/widgets/apv_name_&_position.dart';
import 'package:bpjs_inventory/presentation/admin/admin_profile/widgets/apv_profile_img.dart';
import 'package:bpjs_inventory/shared/widgets/buttons/back_icon_button.dart';
import 'package:bpjs_inventory/shared/widgets/input_field/bp_text_form_field.dart';
import 'package:flutter/material.dart';

class AdminProfileView extends StatelessWidget {
  const AdminProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(leading: const BackIconButton()),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: ListView(
          children: [
            SizedBox(height: screen.height * 0.02),
            const ApvProfileImg(),
            SizedBox(height: screen.height * 0.015),
            const ApvNamePosition(
              name: 'Rely Arfadillah',
              position: 'SDM Vice Manager',
            ),
            SizedBox(height: screen.height * 0.08),
            Column(
              children: [
                const BpTextFormField(
                  labelText: "Divisi",
                  value: "SDM & Resource",
                  iconName: 'tag-2',
                ),
                SizedBox(height: screen.height * 0.03),
                const BpTextFormField(
                  labelText: "Email",
                  value: "fulanbpjs@gmail.com",
                  iconName: 'sms',
                ),
                SizedBox(height: screen.height * 0.03),
                const BpTextFormField(
                  labelText: "Phone",
                  value: "+62 123 4567 8901",
                  iconName: 'call',
                ),
                SizedBox(height: screen.height * 0.03),
                const BpTextFormField(
                  labelText: "Password",
                  isPassword: true,
                  value: "123456",
                  iconName: 'key',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
