

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../theme.dart';

class ThemeTextField extends StatelessWidget {
  final String data;
  const ThemeTextField({Key? key, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: colorGrey1),
        borderRadius: BorderRadius.circular(20),
        // color: colorGreyLight2
      ),
      child: TextField(
        decoration: new InputDecoration(
          // border: InputBorder.none,
          // focusedBorder: InputBorder.none,
          labelText: data,
          contentPadding: EdgeInsets.symmetric(vertical: 5.0),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: Colors.transparent)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0, color: Colors.transparent),
          ),
        ),
      ),
    );
  }
}

class ThemeTextFieldTel extends StatelessWidget {
  final String data;
  final double pl;
  final double pr;
  const ThemeTextFieldTel({Key? key, required this.data, required this.pl, required this.pr})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(left: pl, right: pr),
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: colorGrey1),
        borderRadius: BorderRadius.circular(20)
      ),
      child: TextField(
        decoration: new InputDecoration(
          labelText: data,
          contentPadding: EdgeInsets.symmetric(vertical: 5),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 0, color: Colors.transparent)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 0, color: Colors.transparent),
          ),
        ),
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }
}

class FormFieldTel extends StatelessWidget {
  const FormFieldTel({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 8,
          left: 12,
          height: 18,
          width: 28,
          child: Image.asset('assets/images/icons/flag-vi.png')
        ),
        Positioned(
          top: 7,
          left: 40,
          height: 18,
          width: 50,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              '+84',
              style: PrimaryFont.bold(16),
            ),
          ),
        ),
        ThemeTextFieldTel(
          data: 'Nhập số điện thoại của bạn', 
          pl: 90,
          pr: 20,
        )
      ],
    );
  }
}

class DatePickerField extends StatefulWidget {
  const DatePickerField({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<DatePickerField> createState() => _DatePickerFieldState();
}

class _DatePickerFieldState extends State<DatePickerField> {
  DateTime selectedDate = DateTime.now();
  String labelDate = 'Ngày sinh';

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        labelDate = selectedDate.toString().split(' ')[0];
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectDate(context),
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.only(left: 20, right: 20),
        height: 40,
        width: context.w - 40,
        decoration: BoxDecoration(
          border: Border.all(color: colorGrey1),
          borderRadius: BorderRadius.circular(20)
        ),
        child: Stack(
          children: [
              Positioned(
              top: 5,
              right: 0,
              height: 18,
              width: 18,
              child: Icon(
                FontAwesomeIcons.calendar,
                color: colorTheme,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("${labelDate}")
            )
          ],
        ),
      ),
    );
  }
}

class EmailField extends StatelessWidget {
  const EmailField({super.key});

  String? validateEmail(String? value) {
    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);

    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Enter a valid email address'
        : null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: TextFormField(
          validator: validateEmail,
          // keyboardType: TextInputType.emailAddress,
          decoration: new InputDecoration(
            hintText: 'Email',
            contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            isDense: true, 
            floatingLabelBehavior: FloatingLabelBehavior.never,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: colorGrey1),
                borderRadius: BorderRadius.circular(20.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: colorGrey1),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  final String data;
  const PasswordField({Key? key, required this.data}) : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Stack(
        children: [
          TextFormField(
            obscureText: _obscureText,
            enableSuggestions: false,
            autocorrect: false,
            decoration: new InputDecoration(
              hintText: widget.data,
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              isDense: true, 
              floatingLabelBehavior: FloatingLabelBehavior.never,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: colorGrey1),
                  borderRadius: BorderRadius.circular(20.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: colorGrey1),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          Positioned(
            top: -7,
            right: 0,
            child: TextButton(
              onPressed: _toggle,
              child: Icon(
                _obscureText ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye,
                color: colorBlack,
                size: 16,
              ),
            ),
          )
        ],
      )
    );
  }
}