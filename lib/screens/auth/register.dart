import 'package:app/screens/auth/register_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 100, horizontal: 20),
          child: Form(
            key: _formKey,
            child: new RegisterForm(),
          ),
        ),
      ),
    );
  }
}
