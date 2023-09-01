// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bpjs_inventory/presentation/admin/status/widgets/sv_status_button.dart';
import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:bpjs_inventory/shared/widgets/google_fonts/poppins_fontStyle.dart';
import 'package:bpjs_inventory/shared/widgets/icons/svg_icons.dart';

class SvStatusItem extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String position;
  final String time;
  final void Function()? onAccept;
  final void Function()? onPending;
  final void Function()? onCancel;
  final bool? isPending;
  const SvStatusItem({
    Key? key,
    required this.imgUrl,
    required this.name,
    required this.position,
    required this.time,
    this.onAccept,
    this.onPending,
    this.onCancel,
    this.isPending = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.all(20),
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Container(
            // height: 100.0,
            margin: const EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.5,
                color: bpLightGreen,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: bpRedAccent,
                          backgroundImage: AssetImage(imgUrl),
                        ),
                        const SizedBox(width: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PoppinsText(
                              text: name,
                              textStyle: const TextStyle(
                                fontSize: 15,
                                color: secondaryBlue,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            PoppinsText(
                              text: position,
                              textStyle: const TextStyle(
                                height: 1,
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              color: isPending! ? bpGolden : bpLightGreen,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 2,
                              ),
                              child: PoppinsText(
                                text: isPending!
                                    ? 'Pending $time'
                                    : 'Request $time',
                                textStyle: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 15,
                      child: SvgIcon(
                        iconUrl: 'assets/icons/arrow-down-1.svg',
                        height: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: SvStatusButton(
                        onTap: onAccept,
                        backgroundColor: bpLightGreen,
                        text: 'Accept',
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    isPending!
                        ? const SizedBox.shrink()
                        : Expanded(
                            child: SvStatusButton(
                              onTap: onPending,
                              backgroundColor: bpGolden,
                              text: 'Pending',
                            ),
                          ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: SvStatusButton(
                        onTap: onCancel,
                        backgroundColor: bpRedAccent,
                        text: 'Cancel',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
