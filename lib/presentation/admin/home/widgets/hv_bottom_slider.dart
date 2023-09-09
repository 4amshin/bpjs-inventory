import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:bpjs_inventory/shared/widgets/google_fonts/poppins_fontStyle.dart';
import 'package:flutter/material.dart';

class HvBottomSlider extends StatelessWidget {
  const HvBottomSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: screen.height * 0.03),
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: bpLightGreen.withOpacity(0.2),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(65),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PoppinsText(
                    text: 'Hi, Admin',
                    textStyle: TextStyle(
                      height: 1,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: secondaryBlue,
                    ),
                  ),
                  PoppinsText(
                    text: 'Cek persediaan Atk kamu',
                    textStyle: TextStyle(
                      height: 1,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: secondaryBlue,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: screen.height * 0.045),
                // color: Colors.red,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: screen.height * 0.23,
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      padding: EdgeInsets.symmetric(
                        vertical: screen.height * 0.03,
                        horizontal: screen.height * 0.03,
                      ),
                      decoration: const BoxDecoration(
                        color: bpRedAccent,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(50),
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: PoppinsText(
                              text: '19%',
                              textAlign: TextAlign.left,
                              textStyle: TextStyle(
                                fontSize: screen.height * 0.08,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                PoppinsText(
                                  text: 'Alat Tulis',
                                  textAlign: TextAlign.right,
                                  textStyle: TextStyle(
                                    fontSize: screen.height * 0.02,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                PoppinsText(
                                  text: 'Detail >>',
                                  textAlign: TextAlign.right,
                                  textStyle: TextStyle(
                                    height: 1,
                                    fontSize: screen.height * 0.015,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
