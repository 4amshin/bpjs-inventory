// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class PoppinsText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final TextAlign? textAlign;
  const PoppinsText({
    Key? key,
    required this.text,
    required this.textStyle,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: GoogleFonts.poppins(
        textStyle: textStyle,
      ),
      child: Text(
        text,
        textAlign: textAlign,
      ),
    );
  }
}
