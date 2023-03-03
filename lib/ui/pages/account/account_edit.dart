import 'package:app_demo/ui/theme.dart';
import 'package:flutter/material.dart';

import '../../components/header.dart';
import '../../components/page_title.dart';
import '../../components/text_field.dart';

class CustomerAccountEdit extends StatelessWidget {
  const CustomerAccountEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Header(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: PageTitle(data: 'Edit Account Information'),
                    ),
                    ThemeTextField(data: 'Full Name'),
                    ActionEditAcc(),
                  ],
                ).p(),
              ),
            )
          ],
        )
      ),
    );
  }
}

class ActionEditAcc extends StatefulWidget {
  const ActionEditAcc({super.key});

  @override
  State<ActionEditAcc> createState() => _ActionEditAccState();
}

class _ActionEditAccState extends State<ActionEditAcc> {
  bool _isCheckedpw = false;
  bool _isCheckedemail = false;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Form(
          child: Column(
            children: [
              CheckboxListTile(
                title: Text('Change Email'),
                activeColor: colorTheme,
                value: _isCheckedemail,
                onChanged: (val) {
                  setState(() {
                    _isCheckedemail = !_isCheckedemail;
                  });
                }
              ),
              CheckboxListTile(
                title: Text('Change Password'),
                activeColor: colorTheme,
                value: _isCheckedpw,
                onChanged: (val) {
                  setState(() {
                    _isCheckedpw = !_isCheckedpw;
                  });
                }
              ),
              Visibility(
                visible: _isCheckedemail,
                child: EmailField(),
              ),
              Visibility(
                visible: _isChecked,
                child: PasswordField(data: 'Current Password',),
              ),
              Visibility(
                visible: _isCheckedpw,
                child: Column(
                  children: [
                    PasswordField(data: 'New Password',),
                    PasswordField(data: 'Confirm New Password',),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {}, 
                child: Text('Save')
              )
            ],
          ),
        ),
    );
  }
}