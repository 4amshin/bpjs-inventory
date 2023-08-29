import 'package:bpjs_inventory/shared/theme/color_themes.dart';
import 'package:bpjs_inventory/shared/widgets/google_fonts/poppins_fontStyle.dart';
import 'package:flutter/material.dart';

class BpDropDownMenu extends StatefulWidget {
  const BpDropDownMenu({Key? key}) : super(key: key);

  @override
  State<BpDropDownMenu> createState() => _BpDropDownMenuState();
}

class _BpDropDownMenuState extends State<BpDropDownMenu> {
  String dropDownValue = 'One';
  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: screen.width,
      decoration: BoxDecoration(
        border: Border.all(
          color: secondaryBlue,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownButton<String>(
        value: dropDownValue,
        // underline: ,
        borderRadius: BorderRadius.circular(10),

        dropdownColor: secondaryBlue,
        items: const [
          DropdownMenuItem<String>(
            value: 'One',
            child: PoppinsText(
              text: 'One',
              textStyle: TextStyle(color: Colors.black),
            ),
          ),
          DropdownMenuItem<String>(
            value: 'Two',
            child: Text('Two'),
          ),
          DropdownMenuItem<String>(
            value: 'Three',
            child: Text('Three'),
          ),
        ],
        onChanged: (String? newValue) {
          setState(() {
            dropDownValue = newValue!;
          });
        },
      ),
    );
  }
}
