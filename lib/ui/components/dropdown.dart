

import 'package:app_demo/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const List<String> _list = <String>['Việt Nam'];

class DropDownOption extends StatefulWidget {
  List listCountry;
  DropDownOption({Key? key, required this.listCountry}) : super(key: key);

  @override
  State<DropDownOption> createState() => _DropDownOptionState();
}

class _DropDownOptionState extends State<DropDownOption> {
  String dropdownValue = _list.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.w,
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 36,
      decoration: BoxDecoration(
        border: Border.all(color: colorGrey1),
        borderRadius: BorderRadius.circular(20)
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(
            FontAwesomeIcons.angleDown,
            size: 16,
          ),
          elevation: 16,
          // style: const TextStyle(color: Colors.deepPurple),
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              dropdownValue = value!;
            });
          },
          items: _list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}